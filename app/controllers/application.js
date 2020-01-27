import Controller from '@ember/controller';
import { action } from '@ember/object';
import { tracked } from '@glimmer/tracking';
export default class ApplicationController extends Controller {
  @tracked
  endpoint = 'http://localhost:8890/sparql'

  @action
  setEndpoint(event) {
    this.endpoint = event.target.value;
  }
}
