module Jekyll
	module Filters
		def ragadjust(text, method = 'all')
			preps = /(\s|^|>)((aboard|about|above|across|after|against|along|amid|among|anti|around|before|behind|below|beneath|beside|besides|between|beyond|concerning|considering|despite|down|during|except|excepting|excluding|following|from|inside|into|like|minus|near|onto|opposite|outside|over|past|plus|regarding|round|save|since|than|that|this|through|toward|towards|under|underneath|unlike|until|upon|versus|with|within|without)\s)+/i
			smallwords = /(\s|^)(([a-zA-Z-_(]{1,2}('|’)*[a-zA-Z-_,;]{0,1}?\s)+)/i # words with 3 or less characters
			dashes = /([-–—])\s/i
			emphasis = /(<(strong|em|b|i)>)(([^\s]+\s*){2,3})?(<\/(strong|em|b|i)>)/i
			numbers = /([0-9])+\s/

			if method === 'small-words' || method === 'all'
				text.gsub!(smallwords) {
					Regexp.last_match[1] + Regexp.last_match[2].gsub(/\s/i, '&#160;')
				}
			end

			if method === 'prepositions' || method === 'all'
				text.gsub!(preps) {
					Regexp.last_match[1] + Regexp.last_match[2].gsub(/\s/i, '&#160;')
				}
			end

			if method === 'dashes' || method === 'all'
				text.gsub!(dashes) { |match|
					match.gsub(/\s/, '&#160;')
				}
			end

			if method === 'emphasis' || method === 'all'
				text.gsub!(dashes) {
					Regexp.last_match[1] + Regexp.last_match[3].gsub(/\s/i, '&#160;') + Regexp.last_match[5]
				}
			end

			if method === 'numbers' || method === 'all'
				text.gsub!(numbers) { |match|
					match.gsub(/\s/, '&#160;')
				}
			end

			text
		end
	end
end