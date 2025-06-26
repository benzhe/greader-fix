.class public Lzu6;
.super Lqm6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lqm6<",
        "Lcom/noinnion/android/reader/common/subscription/BundleItem$Subscription;",
        ">;"
    }
.end annotation


# instance fields
.field public g:Landroid/content/Context;

.field public h:I

.field public i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public j:Lan6;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Lcom/noinnion/android/reader/common/subscription/BundleItem$Subscription;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p3}, Lqm6;-><init>(Landroid/content/Context;Ljava/util/List;)V

    const/4 p3, 0x0

    .line 2
    iput p3, p0, Lzu6;->h:I

    .line 3
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    iput-object p3, p0, Lzu6;->i:Ljava/util/Set;

    .line 4
    new-instance p3, Lan6;

    invoke-direct {p3}, Lan6;-><init>()V

    iput-object p3, p0, Lzu6;->j:Lan6;

    .line 5
    iput-object p1, p0, Lzu6;->g:Landroid/content/Context;

    .line 6
    iput p2, p0, Lzu6;->h:I

    .line 7
    iget-object p1, p0, Lqm6;->e:Landroid/content/Context;

    .line 8
    invoke-static {p1}, Lip6;->e(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    .line 9
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lip6;

    .line 10
    iget-object p3, p0, Lzu6;->i:Ljava/util/Set;

    iget-object p2, p2, Lip6;->f:Ljava/lang/String;

    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lzu6;->g:Landroid/content/Context;

    const-string p3, "layout_inflater"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const p3, 0x7f0c00df

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lqm6;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/noinnion/android/reader/common/subscription/BundleItem$Subscription;

    if-eqz p1, :cond_5

    const p3, 0x7f090203

    .line 4
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object v0, p1, Lcom/noinnion/android/reader/common/subscription/BundleItem$Subscription;->title:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    new-instance p3, Lgz6$b;

    invoke-direct {p3}, Lgz6$b;-><init>()V

    const v0, 0x7f0800ff

    .line 6
    iput v0, p3, Lgz6$b;->c:I

    .line 7
    iput v0, p3, Lgz6$b;->a:I

    .line 8
    iput v0, p3, Lgz6$b;->b:I

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p3, Lgz6$b;->g:Z

    .line 10
    iput-boolean v0, p3, Lgz6$b;->h:Z

    .line 11
    iput-boolean v0, p3, Lgz6$b;->i:Z

    .line 12
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 13
    invoke-virtual {p3, v1}, Lgz6$b;->a(Landroid/graphics/Bitmap$Config;)Lgz6$b;

    .line 14
    invoke-virtual {p3}, Lgz6$b;->b()Lgz6;

    move-result-object p3

    const v1, 0x7f090143

    .line 15
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 16
    iget v2, p0, Lzu6;->h:I

    const v3, 0x7f100001

    if-ne v2, v3, :cond_1

    const p3, 0x7f080106

    .line 17
    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 18
    :cond_1
    iget-object v2, p1, Lcom/noinnion/android/reader/common/subscription/BundleItem$Subscription;->image:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 19
    invoke-static {}, Lsx6;->n()Lsx6;

    move-result-object v2

    iget-object v3, p1, Lcom/noinnion/android/reader/common/subscription/BundleItem$Subscription;->image:Ljava/lang/String;

    invoke-virtual {v2, v3, v1, p3}, Lhz6;->g(Ljava/lang/String;Landroid/widget/ImageView;Lgz6;)V

    goto :goto_0

    .line 20
    :cond_2
    iget-object v2, p1, Lcom/noinnion/android/reader/common/subscription/BundleItem$Subscription;->url:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 21
    invoke-static {}, Lsx6;->n()Lsx6;

    move-result-object v2

    const-string v3, "https://plus.google.com/_/favicon?domain="

    invoke-static {v3}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/noinnion/android/reader/common/subscription/BundleItem$Subscription;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1, p3}, Lhz6;->g(Ljava/lang/String;Landroid/widget/ImageView;Lgz6;)V

    goto :goto_0

    :cond_3
    const p3, 0x7f0800e1

    .line 22
    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    const p3, 0x7f090056

    .line 23
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 24
    iget-object v1, p1, Lcom/noinnion/android/reader/common/subscription/BundleItem$Subscription;->url:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lzu6;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const p1, 0x7f0800ed

    .line 25
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 p1, 0x0

    .line 26
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_1

    .line 27
    :cond_4
    new-instance v1, Lzu6$a;

    invoke-direct {v1, p0, p3, p1}, Lzu6$a;-><init>(Lzu6;Landroid/widget/ImageView;Lcom/noinnion/android/reader/common/subscription/BundleItem$Subscription;)V

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080099

    .line 28
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 29
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_5
    :goto_1
    return-object p2
.end method

.method public b(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lzu6;->i:Ljava/util/Set;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "feed/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
