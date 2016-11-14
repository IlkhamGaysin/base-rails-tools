SimpleForm.setup do |config|
  config.wrappers(
    :default,
    class: :input,
    hint_class: :field_with_hint,
    error_class: :field_with_errors
  ) do |b|

    b.use :html5

    b.use :placeholder
    b.optional :maxlength

    b.optional :pattern

    b.optional :min_max

    b.optional :readonly

    b.use :label_input
    b.use :hint,  wrap_with: { tag: :span, class: :hint }
    b.use :error, wrap_with: { tag: :span, class: :error }
  end

  config.wrappers :foundation, class: :input, hint_class: 'has-hint', error_class: :error do |b|
    b.use :html5
    b.use :placeholder
    b.use :label

    b.optional :maxlength
    b.optional :pattern
    b.optional :min_max
    b.optional :readonly

    b.use :input
    b.use :error, wrap_with: { tag: :small, class: :error }

    b.use :hint,  wrap_with: { tag: :small, class: :hint }
  end

  config.wrappers :with_labels, class: :row, hint_class: 'has-hint', error_class: :error do |b|
    b.use :html5
    b.use :placeholder

    b.optional :maxlength
    b.optional :pattern
    b.optional :min_max
    b.optional :readonly

    b.use :label, wrap_with: { class: 'large-4 medium-4 column' }
    b.use :input, wrap_with: { class: 'large-8 medium-8 column' }

    b.wrapper tag: 'div', class: 'large-8 medium-8 column' do |error|
      error.use :error, wrap_with: { tag: :small, class: 'error' }
    end
  end

  config.wrappers :file_upload, error_class: :error do |b|
    b.wrapper :label, tag: 'label' do |label|
      label.use :label_text
      label.use :input, class: 'show-for-sr'

      label.wrapper :button, tag: 'div', class: 'btn' do |button|
        button.use :hint
      end
    end
  end

  config.default_wrapper = :foundation
  config.boolean_style = :inline

  config.button_class = 'button'
  config.error_notification_tag = :div

  config.error_notification_class = 'alert-box alert'
  config.item_wrapper_tag = :div
  config.default_form_class = 'simple-form'
  config.browser_validations = false
end
