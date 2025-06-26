.class public final Lks6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Lcom/noinnion/android/greader/ui/premium/PremiumActivity;

.field public final synthetic f:Lcom/android/billingclient/api/SkuDetails;

.field public final synthetic g:Lpo6;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/premium/PremiumActivity;Lcom/android/billingclient/api/SkuDetails;Lpo6;)V
    .locals 0

    iput-object p1, p0, Lks6;->e:Lcom/noinnion/android/greader/ui/premium/PremiumActivity;

    iput-object p2, p0, Lks6;->f:Lcom/android/billingclient/api/SkuDetails;

    iput-object p3, p0, Lks6;->g:Lpo6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lks6;->e:Lcom/noinnion/android/greader/ui/premium/PremiumActivity;

    iget-object v0, p0, Lks6;->f:Lcom/android/billingclient/api/SkuDetails;

    .line 2
    sget v1, Lcom/noinnion/android/greader/ui/premium/PremiumActivity;->E:I

    .line 3
    invoke-virtual {p1, v0}, Lcom/noinnion/android/greader/ui/premium/PremiumActivity;->C(Lcom/android/billingclient/api/SkuDetails;)V

    return-void
.end method
