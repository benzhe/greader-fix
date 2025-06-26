.class public final Lm16;
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
    iput-object p1, p0, Lm16;->a:Lj16;

    .line 3
    iput-object p2, p0, Lm16;->b:Ljj7;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lm16;->a:Lj16;

    iget-object v1, p0, Lm16;->b:Ljj7;

    invoke-interface {v1}, Ljj7;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/DisplayMetrics;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lf06;

    invoke-direct {v0}, Lf06;-><init>()V

    const-wide v2, 0x3fe999999999999aL    # 0.8

    .line 4
    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v4, v4

    mul-double v4, v4, v2

    double-to-int v2, v4

    .line 5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 6
    iput-object v2, v0, Lf06;->c:Ljava/lang/Integer;

    .line 7
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 9
    iput-object v1, v0, Lf06;->d:Ljava/lang/Integer;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 10
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 11
    iput-object v1, v0, Lf06;->a:Ljava/lang/Float;

    const/high16 v1, 0x3f000000    # 0.5f

    .line 12
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 13
    iput-object v1, v0, Lf06;->b:Ljava/lang/Float;

    const/16 v1, 0x11

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 15
    iput-object v1, v0, Lf06;->f:Ljava/lang/Integer;

    const v1, 0x50122

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 17
    iput-object v1, v0, Lf06;->e:Ljava/lang/Integer;

    const/4 v1, -0x2

    .line 18
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 19
    iput-object v2, v0, Lf06;->g:Ljava/lang/Integer;

    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 21
    iput-object v1, v0, Lf06;->h:Ljava/lang/Integer;

    .line 22
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 23
    iput-object v1, v0, Lf06;->i:Ljava/lang/Boolean;

    .line 24
    iput-object v1, v0, Lf06;->j:Ljava/lang/Boolean;

    .line 25
    iput-object v1, v0, Lf06;->k:Ljava/lang/Boolean;

    return-object v0
.end method
