.class public Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbn6;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;Lpu6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog$a;->a:Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog$a;->a:Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;

    .line 2
    iget-object p1, p1, Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;->vProgress:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
