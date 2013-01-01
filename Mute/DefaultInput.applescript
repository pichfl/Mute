script DefaultInput

	on getVolume()
		return input volume of (get volume settings)
	end

	on setDefaultInputVolume_(target)
		set targetvolume to target as integer
		tell application "System Events" to set volume input volume targetvolume

		if targetvolume is 0 then
			
		else

		end if
	end

end script