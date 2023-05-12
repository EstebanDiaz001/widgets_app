import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem(
      {required this.title,
      required this.subTitle,
      required this.link,
      required this.icon});
}

const appMenuItems = <MenuItem>[
  MenuItem(
    title: 'Botones',
    subTitle: 'Varios botones en Flutter',
    link: '/buttons',
    icon: Icons.smart_button_outlined),

  MenuItem(
    title: 'Tarjetas',
    subTitle: 'Un contenedor estilizado',
    link: '/cards',
    icon: Icons.credit_card),
    
  MenuItem(
    title: 'Progress Indicators',
    subTitle: 'Generales y controlados',
    link: '/progress',
    icon: Icons.refresh_outlined),

  MenuItem(
    title: 'Snackbar y dialogos',
    subTitle: 'Indicadores en pantalla',
    link: '/snackbars',
    icon: Icons.fmd_bad_rounded),
  
  MenuItem(
    title: 'Animated container',
    subTitle: 'Statefull widget animado',
    link: '/animated',
    icon: Icons.animation),
  
  MenuItem(
    title: 'UI Controls + Titles',
    subTitle: 'Una serie de controles en flutter',
    link: '/ui-controls',
    icon: Icons.stay_current_portrait_rounded),

  MenuItem(
    title: 'App Tutorial Screen',
    subTitle: 'Tutorial De La apliacición',
    link: '/app-tutorial',
    icon: Icons.ondemand_video_rounded),
  
  MenuItem(
    title: 'Infinite Scroll',
    subTitle: 'Scroll infinito de imagenes',
    link: '/infinite',
    icon: Icons.perm_device_information_outlined),
   

];
