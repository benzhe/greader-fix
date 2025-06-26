.class public Lbv6;
.super Lqm6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lqm6<",
        "Lcom/noinnion/android/reader/common/subscription/Feed;",
        ">;"
    }
.end annotation


# instance fields
.field public g:Landroid/content/Context;

.field public h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/noinnion/android/reader/common/subscription/Feed;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lqm6;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 2
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lbv6;->h:Ljava/util/Set;

    .line 3
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lbv6;->i:Ljava/util/Set;

    .line 4
    new-instance p2, Lan6;

    invoke-direct {p2}, Lan6;-><init>()V

    iput-object p2, p0, Lbv6;->j:Lan6;

    .line 5
    iput-object p1, p0, Lbv6;->g:Landroid/content/Context;

    .line 6
    iget-object p1, p0, Lqm6;->e:Landroid/content/Context;

    .line 7
    invoke-static {p1}, Lip6;->e(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    .line 8
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

    .line 9
    iget-object v0, p0, Lbv6;->h:Ljava/util/Set;

    iget-object p2, p2, Lip6;->f:Ljava/lang/String;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 p3, 0x0

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lbv6;->g:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const v0, 0x7f0c00e3

    .line 2
    invoke-virtual {p2, v0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 3
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lqm6;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/noinnion/android/reader/common/subscription/Feed;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p3, v0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-eqz p3, :cond_4

    .line 4
    new-instance v0, Lgz6$b;

    invoke-direct {v0}, Lgz6$b;-><init>()V

    const v1, 0x7f0800ff

    .line 5
    iput v1, v0, Lgz6$b;->c:I

    .line 6
    iput v1, v0, Lgz6$b;->a:I

    .line 7
    iput v1, v0, Lgz6$b;->b:I

    const/4 v1, 0x1

    .line 8
    iput-boolean v1, v0, Lgz6$b;->g:Z

    .line 9
    iput-boolean v1, v0, Lgz6$b;->h:Z

    .line 10
    iput-boolean v1, v0, Lgz6$b;->i:Z

    .line 11
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 12
    invoke-virtual {v0, v2}, Lgz6$b;->a(Landroid/graphics/Bitmap$Config;)Lgz6$b;

    .line 13
    invoke-virtual {v0}, Lgz6$b;->b()Lgz6;

    move-result-object v0

    const v2, 0x7f090143

    .line 14
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 15
    iget-object v3, p3, Lcom/noinnion/android/reader/common/subscription/Feed;->image:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 16
    invoke-static {}, Lsx6;->n()Lsx6;

    move-result-object v3

    iget-object v4, p3, Lcom/noinnion/android/reader/common/subscription/Feed;->image:Ljava/lang/String;

    invoke-virtual {v3, v4, v2, v0}, Lhz6;->g(Ljava/lang/String;Landroid/widget/ImageView;Lgz6;)V

    goto :goto_1

    .line 17
    :cond_1
    iget-object v3, p3, Lcom/noinnion/android/reader/common/subscription/Feed;->url:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 18
    invoke-static {}, Lsx6;->n()Lsx6;

    move-result-object v3

    const-string v4, "https://plus.google.com/_/favicon?domain="

    invoke-static {v4}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p3, Lcom/noinnion/android/reader/common/subscription/Feed;->url:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2, v0}, Lhz6;->g(Ljava/lang/String;Landroid/widget/ImageView;Lgz6;)V

    goto :goto_1

    :cond_2
    const v0, 0x7f0800e1

    .line 19
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    const v0, 0x7f090203

    .line 20
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p3, Lcom/noinnion/android/reader/common/subscription/Feed;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090344

    .line 21
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p3, Lcom/noinnion/android/reader/common/subscription/Feed;->url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090057

    .line 22
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 23
    iget-object p3, p3, Lcom/noinnion/android/reader/common/subscription/Feed;->url:Ljava/lang/String;

    invoke-virtual {p0, p3}, Lbv6;->b(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3

    const p1, 0x7f0800ed

    .line 24
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 p1, 0x0

    .line 25
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_2

    .line 26
    :cond_3
    new-instance p3, Lbv6$a;

    invoke-direct {p3, p0, p1, v0}, Lbv6$a;-><init>(Lbv6;ILandroid/widget/ImageView;)V

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080099

    .line 27
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 28
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_4
    :goto_2
    return-object p2
.end method

.method public b(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lbv6;->h:Ljava/util/Set;

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

.method public c(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/noinnion/android/reader/common/subscription/Feed;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lqm6;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lbv6;->i:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/noinnion/android/reader/common/subscription/Feed;

    .line 4
    iget-object v1, p0, Lbv6;->i:Ljava/util/Set;

    iget-object v2, v0, Lcom/noinnion/android/reader/common/subscription/Feed;->url:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    iget-object v1, p0, Lqm6;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v1, p0, Lbv6;->i:Ljava/util/Set;

    iget-object v0, v0, Lcom/noinnion/android/reader/common/subscription/Feed;->url:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
