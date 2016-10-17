module Nupack
    class Calculator

        FLAT_MARKUP = 0.05
        PERSONNEL_MARKUP = 0.012
        MATERIAL_MARKUPS = {
          drugs: 0.075,
          food: 0.13,
          electronics: 0.02
        }

        def initialize( material_markups = MATERIAL_MARKUPS, flat_markup = FLAT_MARKUP, personnel_markup = PERSONNEL_MARKUP )
          @material_markups = material_markups
          @flat_markup = flat_markup
          @personnel_markup = personnel_markup
        end

        def calculate(job)
          base_plus_flat = job.base_price + flat_markup(job)
          markups_total = personnel_markup(job.required_personnel, base_plus_flat)
          markups_total += material_markup(job.material_type, base_plus_flat)
          (base_plus_flat + markups_total).round(2)
        end

        def flat_markup(job)
          job.base_price * @flat_markup
        end

        def personnel_markup(required_personnel, base_plus_flat)
          personnel_markup = required_personnel * @personnel_markup
          base_plus_flat * personnel_markup
        end

        def material_markup(material_type, base_plus_flat)
          material_markup = fetch_markup(material_type.to_sym)
          base_plus_flat * material_markup
        end

        def fetch_markup(markup)
          @material_markups.fetch(markup, 0)
        end

    end
end
