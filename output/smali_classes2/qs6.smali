.class public final Lqs6;
.super Ljm7;
.source "SourceFile"

# interfaces
.implements Lel7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljm7;",
        "Lel7<",
        "Lyj7;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/noinnion/android/greader/ui/premium/PremiumActivity;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/premium/PremiumActivity;)V
    .locals 0

    iput-object p1, p0, Lqs6;->e:Lcom/noinnion/android/greader/ui/premium/PremiumActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ljm7;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lqs6;->e:Lcom/noinnion/android/greader/ui/premium/PremiumActivity;

    const v1, 0x7f1102d3

    invoke-static {v0, v1}, Ln56;->W1(Landroid/content/Context;I)V

    .line 2
    sget-object v0, Lyj7;->a:Lyj7;

    return-object v0
.end method
