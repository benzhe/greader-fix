.class public Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment_ViewBinding$b;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment_ViewBinding;-><init>(Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment_ViewBinding;Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment_ViewBinding$b;->e:Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment_ViewBinding$b;->e:Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment;

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, p1}, Ln56;->d1(Landroid/content/Context;Landroid/view/View;)V

    .line 3
    iget-object p1, v0, Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment;->vQueryText:Landroid/widget/EditText;

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
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f1101c5

    invoke-virtual {v0, v3}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment;->f:Landroid/app/ProgressDialog;

    .line 7
    iget-object v1, v0, Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment;->h:Ldv6;

    invoke-virtual {v1}, Lvm6;->a()V

    .line 8
    iget-object v0, v0, Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment;->h:Ldv6;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lvm6;->e(Ljava/lang/Object;)J

    :goto_0
    return-void
.end method
