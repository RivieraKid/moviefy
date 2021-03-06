//
//  ContentView.swift
//  Moviefy
//
//  Created by Nuno Gonçalves on 11/04/2020.
//  Copyright © 2019 Nuno Gonçalves. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    
    init() {
        UITableView.appearance().separatorStyle = .none
    }
    
    var body: some View {
        UITabView([
            UITabView.Tab(view: DiscoverView(), title: "Discover", image: "play.fill"),
            UITabView.Tab(view: SearchView(), title: "Search", image: "magnifyingglass.circle.fill"),
            UITabView.Tab(view: FavoritesView(), title: "Favorites", image: "star.fill"),
            UITabView.Tab(view: SettingsView(), title: "Settings", image: "line.horizontal.3.decrease.circle.fill")
        ])
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
#endif
