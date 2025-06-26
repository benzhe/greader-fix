.class public Lq0$c;
.super Lt0$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public K:Lj4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj4<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public L:Ln4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln4<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lq0$c;Lq0;Landroid/content/res/Resources;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lt0$a;-><init>(Lt0$a;Lt0;Landroid/content/res/Resources;)V

    if-eqz p1, :cond_0

    .line 2
    iget-object p2, p1, Lq0$c;->K:Lj4;

    iput-object p2, p0, Lq0$c;->K:Lj4;

    .line 3
    iget-object p1, p1, Lq0$c;->L:Ln4;

    iput-object p1, p0, Lq0$c;->L:Ln4;

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Lj4;

    invoke-direct {p1}, Lj4;-><init>()V

    iput-object p1, p0, Lq0$c;->K:Lj4;

    .line 5
    new-instance p1, Ln4;

    const/16 p2, 0xa

    .line 6
    invoke-direct {p1, p2}, Ln4;-><init>(I)V

    .line 7
    iput-object p1, p0, Lq0$c;->L:Ln4;

    :goto_0
    return-void
.end method

.method public static h(II)J
    .locals 2

    int-to-long v0, p0

    const/16 p0, 0x20

    shl-long/2addr v0, p0

    int-to-long p0, p1

    or-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lq0$c;->K:Lj4;

    invoke-virtual {v0}, Lj4;->d()Lj4;

    move-result-object v0

    iput-object v0, p0, Lq0$c;->K:Lj4;

    .line 2
    iget-object v0, p0, Lq0$c;->L:Ln4;

    invoke-virtual {v0}, Ln4;->c()Ln4;

    move-result-object v0

    iput-object v0, p0, Lq0$c;->L:Ln4;

    return-void
.end method

.method public i(I)I
    .locals 2

    const/4 v0, 0x0

    if-gez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object v1, p0, Lq0$c;->L:Ln4;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Ln4;->f(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    new-instance v0, Lq0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lq0;-><init>(Lq0$c;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 2
    new-instance v0, Lq0;

    invoke-direct {v0, p0, p1}, Lq0;-><init>(Lq0$c;Landroid/content/res/Resources;)V

    return-object v0
.end method
