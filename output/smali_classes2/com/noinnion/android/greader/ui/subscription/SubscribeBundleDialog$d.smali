.class public Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbn6;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final synthetic a:Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog;Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog$d;->a:Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 5

    .line 1
    instance-of v0, p1, Lcom/noinnion/android/reader/common/subscription/Feed;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/noinnion/android/reader/common/subscription/Feed;

    .line 3
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog$d;->a:Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog;

    .line 4
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f1101d4

    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v3, v2, v4, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog;->e:Landroid/app/ProgressDialog;

    .line 5
    iget-object v1, v0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog;->j:Lev6;

    invoke-virtual {v1}, Lvm6;->a()V

    .line 6
    iget-object v0, v0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog;->j:Lev6;

    invoke-virtual {v0, p1}, Lvm6;->e(Ljava/lang/Object;)J

    :cond_0
    return-void
.end method
