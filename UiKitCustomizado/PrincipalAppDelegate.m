//
//  PrincipalAppDelegate.m
//  UiKitCustomizado
//
//  Created by Rafael Brigagão Paulino on 27/09/12.
//  Copyright (c) 2012 rafapaulino.com. All rights reserved.
//

#import "PrincipalAppDelegate.h"

@implementation PrincipalAppDelegate

-(void)customizandoAparencia
{
    //customizar o navigation bar
    
    //carregando a imagem que será colocada no navigation bar em orientacao portrait, onde sua altura é 44
    UIImage *imagemNavBar44 = [UIImage imageNamed:@"navBar_44.png"];
    
    //colocar a imagem no navigation bar em orientacao portrait
    [[UINavigationBar appearance] setBackgroundImage:imagemNavBar44 forBarMetrics:UIBarMetricsDefault];
    
    
    //carregando a imagem que será colocada no navigation bar em orientacao landscape, onde sua altura é 32
    UIImage *imagemNavBar32 = [UIImage imageNamed:@"navBar_32.png"];
    
    //colocar a imagem no navigation bar
    [[UINavigationBar appearance] setBackgroundImage:imagemNavBar32 forBarMetrics:UIBarMetricsLandscapePhone];
    
    NSMutableDictionary *dicionarioTexto = [[NSMutableDictionary alloc] init];
    
    [dicionarioTexto setObject:[UIColor yellowColor] forKey:UITextAttributeTextColor];
    [dicionarioTexto setObject:[UIColor blackColor] forKey:UITextAttributeTextShadowColor];
    
    [dicionarioTexto setObject:[UIFont fontWithName:@"Arial-BoldItalicMT" size:20] forKey:UITextAttributeFont];
    
    [dicionarioTexto setObject:[NSValue valueWithUIOffset:UIOffsetMake(2, -2)] forKey:UITextAttributeTextShadowOffset];
    
    [[UINavigationBar appearance] setTitleTextAttributes:dicionarioTexto];
    
    //customizar o bar button item -portrait
    //resizableImageWithCapInsets:UIEdgeInsetsMake(0, 5, 0, 5) serve para replicar as partes da imagem no background
    UIImage *botaoNavBar30 = [[UIImage imageNamed:@"btn_30.png"] resizableImageWithCapInsets:UIEdgeInsetsMake(0, 5, 0, 5)];
    
    [[UIBarButtonItem appearance] setBackgroundImage:botaoNavBar30 forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    
    //customizar o botao voltar da barra - portrait
    UIImage *botaoVoltarNavBar30 = [UIImage imageNamed:@"btnVoltar_30.png"];
    
    [[UIBarButtonItem appearance] setBackButtonBackgroundImage:botaoVoltarNavBar30 forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    
    
    //customizar o bar button item - landscape
    //resizableImageWithCapInsets:UIEdgeInsetsMake(0, 5, 0, 5) serve para replicar as partes da imagem no background
    UIImage *botaoNavBar24 = [UIImage imageNamed:@"btn_24.png"];
    
    [[UIBarButtonItem appearance] setBackgroundImage:botaoNavBar24 forState:UIControlStateNormal barMetrics:UIBarMetricsLandscapePhone];
    
    //customizar o botao voltar da barra - landscape
    UIImage *botaoVoltarNavBar24 = [UIImage imageNamed:@"btnVoltar_24.png"];
    
    [[UIBarButtonItem appearance] setBackButtonBackgroundImage:botaoVoltarNavBar24 forState:UIControlStateNormal barMetrics:UIBarMetricsLandscapePhone];
    
    
    //customizar o tab bar
    UIImage *imagemTabBar = [UIImage imageNamed:@"tab_bg.png"];
    [[UITabBar appearance] setBackgroundImage:imagemTabBar];
    
    //setar uma imagem de indicacao de selecao do tab
    [[UITabBar appearance] setSelectionIndicatorImage:[UIImage imageNamed:@"tab_select_indicator.png"]];
    
    
    //mudar a cor do texto dos botoes do navigation bar como modificar o elemento visual
    NSMutableDictionary *dicionarioTextoBotao = [[NSMutableDictionary alloc] init];
    
    float cor = (float)146/(float)255;
    
    [dicionarioTextoBotao setObject:[UIColor colorWithRed:0 green:cor blue:cor alpha:1] forKey:UITextAttributeTextColor];
 
    [[UIBarButtonItem appearance] setTitleTextAttributes:dicionarioTextoBotao forState:UIControlStateNormal];
    
    
    //customizando o segmented control
    UIImage *segNaoSelecionado = [UIImage imageNamed:@"segcontrol_uns.png"];
    
    UIImage *segSelecionado = [UIImage imageNamed:@"segcontrol_sel.png"];
    
    UIImage *segSimNao = [UIImage imageNamed:@"segcontrol_sel-uns.png"];
    
    UIImage *segNaoSim = [UIImage imageNamed:@"segcontrol_uns-sel.png"];
    
    UIImage *segNaoNao = [UIImage imageNamed:@"segcontrol_uns-uns.png"];
    
    [[UISegmentedControl appearance] setBackgroundImage:segNaoSelecionado forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    
    [[UISegmentedControl appearance] setBackgroundImage:segSelecionado forState:UIControlStateSelected barMetrics:UIBarMetricsDefault];
    
    [[UISegmentedControl appearance] setDividerImage:segSimNao forLeftSegmentState:UIControlStateSelected rightSegmentState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    
    [[UISegmentedControl appearance] setDividerImage:segNaoSim forLeftSegmentState:UIControlStateNormal rightSegmentState:UIControlStateSelected barMetrics:UIBarMetricsDefault];
    
    [[UISegmentedControl appearance] setDividerImage:segNaoNao forLeftSegmentState:UIControlStateNormal rightSegmentState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    
    
    //customizar o slider
    UIImage *minImagem = [[UIImage imageNamed:@"slider_minimum.png"] resizableImageWithCapInsets:UIEdgeInsetsMake(0, 5, 0, 0)];
    
    UIImage *maxImagem = [[UIImage imageNamed:@"slider_maximum.png"] resizableImageWithCapInsets:UIEdgeInsetsMake(0, 5, 0, 0)];
    UIImage *thumb = [UIImage imageNamed:@"thumb.png"];
    
    
    /* customizar todos os sliders */
    /*
      [[UISlider appearance] setMinimumTrackImage:minImagem forState:UIControlStateNormal];
      [[UISlider appearance] setMaximumTrackImage:maxImagem forState:UIControlStateNormal];
      [[UISlider appearance] setThumbImage:thumb forState:UIControlStateNormal];
    */
    
    [[CustomSlider appearance] setMinimumTrackImage:minImagem forState:UIControlStateNormal];
    [[CustomSlider appearance] setMaximumTrackImage:maxImagem forState:UIControlStateNormal];
    [[CustomSlider appearance] setThumbImage:thumb forState:UIControlStateNormal];
    
    
    
    
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [self customizandoAparencia];
    // Override point for customization after application launch.
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
