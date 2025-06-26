.class public Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog$c;
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
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog;Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog$c;->a:Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog$c;->a:Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog;

    iget-object v0, v0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog;->f:Lzu6;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, v0, Lzu6;->i:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 7
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog$c;->a:Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog;

    iget-object p1, p1, Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog;->e:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog$c;->a:Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog;

    iget-object p1, p1, Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog;->e:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_2
    return-void
.end method
