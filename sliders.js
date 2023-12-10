
    let currentSlide1 = 0;
    let currentSlide2 = 0;
    let currentSlide3 = 0;
    let currentSlide4 = 0;

    function showSlide(index, sliderId) {
      const slides = document.getElementById(sliderId);
      const totalSlides = slides.querySelectorAll('.slide').length;

      if (index >= totalSlides) {
        index = 0;
      } else if (index < 0) {
        index = totalSlides - 1;
      }

      const translateValue = -index * 100 + '%';
      slides.style.transform = 'translateX(' + translateValue + ')';

      if (sliderId === 'slider1') {
        currentSlide1 = index;
      } else if (sliderId === 'slider2') {
        currentSlide2 = index;
      }else if (sliderId === 'slider3') {
        currentSlide3 = index;
      }else if (sliderId === 'slider4') {
        currentSlide4 = index;
      }
    }

    function nextSlide(sliderId) {
      if (sliderId === 'slider1') {
        showSlide(currentSlide1 + 1, sliderId);
      } else if (sliderId === 'slider2') {
        showSlide(currentSlide2 + 1, sliderId);
      }else if (sliderId === 'slider3') {
        showSlide(currentSlide3 + 1, sliderId);
      }else if (sliderId === 'slider4') {
        showSlide(currentSlide4 + 1, sliderId);
      }
    }

    function prevSlide(sliderId) {
      if (sliderId === 'slider1') {
        showSlide(currentSlide1 - 1, sliderId);
      } else if (sliderId === 'slider2') {
        showSlide(currentSlide2 - 1, sliderId);
      }else if (sliderId === 'slider3') {
        showSlide(currentSlide3 - 1, sliderId);
      }else if (sliderId === 'slider4') {
        showSlide(currentSlide4 - 1, sliderId);
      }
    }
  
