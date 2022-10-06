//
//  ButtonsView.swift
//  PositiveToNegativeTimerDemo
//
//  Created by Elliot Knight on 05/10/2022.
//

import SwiftUI

struct ButtonsView: View {
	@Binding var startAndPauseCountDown: Bool
	@Binding var timeRemaining: Int
	@Binding var resetTimeSelected: Int
	
	var body: some View {
		HStack {
			Button(action: {
				startAndPauseCountDown.toggle()

			}, label: {
				Image(systemName: startAndPauseCountDown ? "pause.circle.fill" : "play.circle.fill")

					.font(.largeTitle)
			})

			if startAndPauseCountDown  {
				Button(action: {
					timeRemaining = 0
					startAndPauseCountDown = false


				}, label: {
					Image(systemName: "clock.arrow.2.circlepath")
						.font(.largeTitle)
						.foregroundColor(.red)
				})
			}
		}
	}
}

struct ButtonsView_Previews: PreviewProvider {
    static var previews: some View {
		ButtonsView(startAndPauseCountDown: .constant(false), timeRemaining: .constant(5), resetTimeSelected: .constant(22))
    }
}
