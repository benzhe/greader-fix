.class public final Lk16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljj7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lf06;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lj16;

.field public final b:Ljj7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj7<",
            "Landroid/util/DisplayMetrics;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lj16;Ljj7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj16;",
            "Ljj7<",
            "Landroid/util/DisplayMetrics;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lk16;->a:Lj16;

    .line 3
    iput-object p2, p0, Lk16;->b:Ljj7;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lk16;->a:Lj16;

    iget-object v1, p0, Lk16;->b:Ljj7;

    invoke-interface {v1}, Ljj7;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/DisplayMetrics;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lf06;

    invoke-direct {v0}, Lf06;-><init>()V

    const v2, 0x3e99999a    # 0.3f

    .line 4
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 5
    iput-object v3, v0, Lf06;->a:Ljava/lang/Float;

    .line 6
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 7
    iput-object v2, v0, Lf06;->b:Ljava/lang/Float;

    const/high16 v2, 0x3f000000    # 0.5f

    .line 8
    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    mul-float v3, v3, v2

    float-to-int v2, v3

    .line 9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 10
    iput-object v2, v0, Lf06;->c:Ljava/lang/Integer;

    const v2, 0x3f666666    # 0.9f

    .line 11
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 13
    iput-object v1, v0, Lf06;->d:Ljava/lang/Integer;

    const/16 v1, 0x30

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 15
    iput-object v1, v0, Lf06;->f:Ljava/lang/Integer;

    const v1, 0x10120

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 17
    iput-object v1, v0, Lf06;->e:Ljava/lang/Integer;

    const/4 v1, -0x1

    .line 18
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 19
    iput-object v1, v0, Lf06;->g:Ljava/lang/Integer;

    const/4 v1, -0x2

    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 21
    iput-object v1, v0, Lf06;->h:Ljava/lang/Integer;

    .line 22
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 23
    iput-object v1, v0, Lf06;->i:Ljava/lang/Boolean;

    .line 24
    iput-object v1, v0, Lf06;->j:Ljava/lang/Boolean;

    .line 25
    iput-object v1, v0, Lf06;->k:Ljava/lang/Boolean;

    return-object v0
.end method
