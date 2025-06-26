.class public final synthetic Lvp1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final e:Lop1;


# direct methods
.method public constructor <init>(Lop1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvp1;->e:Lop1;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lvp1;->e:Lop1;

    .line 1
    iget-object v0, p1, Lop1;->i:Lcom/google/android/gms/ads/internal/zza;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zza;->recordClick()V

    .line 2
    iget-object p1, p1, Lop1;->k:Lnp0;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lnp0;->d()V

    :cond_0
    return-void
.end method
