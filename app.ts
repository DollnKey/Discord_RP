import AppClient from './src/index';
import { config } from 'dotenv';
config();

const App: AppClient = new AppClient(process.env, { ... });

function init(): void {
    App.loadEvents();
    App.loadComponents();
    App.loadEngines();
    App.loadResources();
    App.loadTextures();
    App.loadPersonal();
    App.login(process.env['APP-KEY']);
}

init();
