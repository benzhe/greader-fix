.class public Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment_ViewBinding$c;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment_ViewBinding;-><init>(Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment_ViewBinding;Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment_ViewBinding$c;->e:Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment_ViewBinding$c;->e:Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment;

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, p1}, Ln56;->d1(Landroid/content/Context;Landroid/view/View;)V

    .line 3
    iget-object p1, v0, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment;->vTopicText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    new-instance v2, Lcom/noinnion/android/reader/common/subscription/Feed;

    const-string v3, " - Google News"

    invoke-static {p1, v3}, Ljo;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "http://news.google.com/news?pz=1&ned=us&hl=en&q="

    const-string v5, "&output=atom"

    invoke-static {v4, p1, v5}, Ljo;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "drawable://2131230982"

    invoke-direct {v2, v3, v4, v5}, Lcom/noinnion/android/reader/common/subscription/Feed;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v2, Lcom/noinnion/android/reader/common/subscription/Feed;

    const-string v3, " - Amazon Tag"

    invoke-static {p1, v3}, Ljo;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "http://www.amazon.com/rss/tag/"

    invoke-static {v4}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ln56;->u0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "+"

    const-string v7, "%20"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/new?length=100"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "drawable://2131230928"

    invoke-direct {v2, v3, v4, v5}, Lcom/noinnion/android/reader/common/subscription/Feed;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v2, Lcom/noinnion/android/reader/common/subscription/Feed;

    const-string v3, " - Reddit"

    invoke-static {p1, v3}, Ljo;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "http://www.reddit.com/r/"

    const-string v5, "/.xml"

    invoke-static {v4, p1, v5}, Ljo;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "drawable://2131231086"

    invoke-direct {v2, v3, p1, v4}, Lcom/noinnion/android/reader/common/subscription/Feed;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object p1, v0, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment;->f:Lbv6;

    invoke-virtual {p1, v1}, Lbv6;->c(Ljava/util/List;)V

    :goto_0
    return-void
.end method
