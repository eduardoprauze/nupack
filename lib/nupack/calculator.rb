module Nupack
    class Calculator

        MARKUPS = {
          flat: 0.05,
          personnel: 0.012,
          drugs: 0.075,
          food: 0.13,
          electronics: 0.02
        }

        def initialize( markups = MARKUPS )
          @markups = markups
        end

        def calculate(job)
          base_plus_flat = job.base_price + flat_markup(job)
          markups_total = personnel_markup(job.required_personnel, base_plus_flat)
          markups_total += material_markup(job.material_type, base_plus_flat)
          (base_plus_flat + markups_total).round(2)
        end

        def flat_markup(job)
          job.base_price * fetch_markup(:flat)
        end

        def personnel_markup(required_personnel, base_plus_flat)
          personnel_markup = required_personnel * fetch_markup(:personnel)
          base_plus_flat * personnel_markup
        end

        def material_markup(material_type, base_plus_flat)
          material_markup = fetch_markup(material_type.to_sym)
          base_plus_flat * material_markup
        end

        def fetch_markup(markup)
          @markups.fetch(markup, 0)
        end

    end
end
