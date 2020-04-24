# frozen_string_literal: true

class TasksController < ApplicationController
  def home
    Task.create title: 'Laundry', details: 'Do not mix colors!'
    Task.create title: 'Studying', details: 'A lot of flashcards to do', completed: true
  end
end
