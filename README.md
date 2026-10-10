# portfolio-site

기존 포트폴리오 PDF를 웹에서 바로 볼 수 있도록 만든 경량 뷰어입니다. 정적 Nginx 컨테이너로 실행하며 Heimdall 배포를 기준으로 구성합니다.

## 로컬 실행

```bash
docker build -t portfolio-site .
docker run --rm -p 8080:8080 portfolio-site
```

- 포트폴리오: <http://localhost:8080>
- 헬스 체크: <http://localhost:8080/healthz>

## 포트폴리오 갱신

`portfolio.pdf`를 최신 PDF로 교체한 뒤 다시 배포합니다. 현재 원본은 형제 저장소 `Homepage/public/portfolio/yunho-cho-portfolio.pdf`입니다.
