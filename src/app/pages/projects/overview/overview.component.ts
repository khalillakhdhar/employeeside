import { Component, OnInit } from '@angular/core';
import { overviewBarChart } from './data';
import { ChartType } from './overview.model';
import { Demande } from 'src/app/core/models/interfaces/demande';
import { DemandeService } from 'src/app/core/models/services/demande.service';

@Component({
  selector: 'app-overview',
  templateUrl: './overview.component.html',
  styleUrls: ['./overview.component.scss']
})
export class OverviewComponent implements OnInit {
  breadCrumbItems: Array<{}>;
  overviewBarChart: ChartType;

  demande: Partial<Demande> = {
    date: new Date(),
    description: '',
  };

  constructor(private demandeService: DemandeService) {}

  ngOnInit() {

    this.breadCrumbItems = [{ label: 'Projects' }, { label: 'Projects Overview', active: true }];
    this.overviewBarChart = overviewBarChart;

    const currentUser = JSON.parse(localStorage.getItem('currentUser') || '{}');
    this.demande.id_user = currentUser?.id;
    this.demande.id_service = currentUser?.service?.id;
  }

  submitDemande() {
    if (!this.demande.date || !this.demande.description) return;
    const currentUser = JSON.parse(localStorage.getItem('currentUser') || '{}');
    const userId = currentUser?.id;
    this.demande.id_user = userId;
    this.demande.id_service = currentUser?.service?.id;

    this.demandeService.create(this.demande as Demande).subscribe({
      next: () => {
        alert('Demande envoyée avec succès !');
        this.demande.description = '';
        this.demande.date = new Date();
      },
      error: () => alert("Erreur lors de l'envoi de la demande.")
    });
  }
}
