.class public final Ljy0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Ljy0;->a:I

    .line 3
    iput p2, p0, Ljy0;->c:I

    .line 4
    iput p3, p0, Ljy0;->b:I

    return-void
.end method

.method public static a()Ljy0;
    .locals 2

    .line 1
    new-instance v0, Ljy0;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Ljy0;-><init>(III)V

    return-object v0
.end method

.method public static c(Lcom/google/android/gms/internal/ads/zzvt;)Ljy0;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvt;->h:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    new-instance p0, Ljy0;

    const/4 v0, 0x3

    invoke-direct {p0, v0, v1, v1}, Ljy0;-><init>(III)V

    return-object p0

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvt;->m:Z

    if-eqz v0, :cond_1

    .line 4
    new-instance p0, Ljy0;

    const/4 v0, 0x2

    invoke-direct {p0, v0, v1, v1}, Ljy0;-><init>(III)V

    return-object p0

    .line 5
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvt;->l:Z

    if-eqz v0, :cond_2

    .line 6
    invoke-static {}, Ljy0;->a()Ljy0;

    move-result-object p0

    return-object p0

    .line 7
    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzvt;->j:I

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzvt;->g:I

    invoke-static {v0, p0}, Ljy0;->d(II)Ljy0;

    move-result-object p0

    return-object p0
.end method

.method public static d(II)Ljy0;
    .locals 2

    .line 1
    new-instance v0, Ljy0;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Ljy0;-><init>(III)V

    return-object v0
.end method


# virtual methods
.method public final b()Z
    .locals 2

    .line 1
    iget v0, p0, Ljy0;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
