document.addEventListener("DOMContentLoaded", () => {
    const counters = document.querySelectorAll(".success-number");

    const animateCount = (el) => {
        const target = +el.getAttribute("data-target");
        let count = 0;
        const step = target / 100;

        const update = () => {
            count += step;
            if (count < target) {
                el.innerText = Math.ceil(count);
                requestAnimationFrame(update);
            } else {
                el.innerText = target;
            }
        };
        update();
    };


    const observer = new IntersectionObserver((entries, obs) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                animateCount(entry.target);
                obs.unobserve(entry.target);
            }
        });
    }, {
        threshold: 0.6
    });

    counters.forEach(counter => {
        observer.observe(counter);
    });
});
