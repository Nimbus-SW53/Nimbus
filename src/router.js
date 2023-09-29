import { createRouter, createWebHistory } from 'vue-router';
import AboutUs from './pages/AboutUs.vue';
import HomePage from './pages/HomePage.vue';
import InfoPage from './pages/InfoPage.vue';
import ServicePage from './pages/ServicePage.vue';
import ProductPage from './pages/ProductPage.vue';
import UserPage from './pages/UserPage.vue';
import FakeApiPage from './pages/FakeApiPage.vue';

const router = createRouter({
    history: createWebHistory(),
    routes: [
        { path: '/', name: 'homepage', component: HomePage },
        { path: '/aboutus', name: 'aboutus', component: AboutUs },
        { path: '/infopage', name: 'infopage', component: InfoPage },
        { path: '/servicepage', name: 'servicepage', component: ServicePage },
        { path: '/product/:id', name: 'product', component: ProductPage },
        { path: '/user', name: 'user', component: UserPage },
        { path: '/fakeapi', name: 'fakeapi', component: FakeApiPage },
    ],
});

export default router;
