.class public final Lfr3;
.super Lsd3;
.source "SourceFile"

# interfaces
.implements Lps3;


# instance fields
.field public final e:Ler3;


# direct methods
.method public constructor <init>(Ler3;)V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.client.IAdClickListener"

    .line 1
    invoke-direct {p0, v0}, Lsd3;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lfr3;->e:Ler3;

    return-void
.end method


# virtual methods
.method public final V6(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 1
    iget-object p1, p0, Lfr3;->e:Ler3;

    invoke-interface {p1}, Ler3;->onAdClicked()V

    .line 2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method

.method public final onAdClicked()V
    .locals 1

    .line 1
    iget-object v0, p0, Lfr3;->e:Ler3;

    invoke-interface {v0}, Ler3;->onAdClicked()V

    return-void
.end method
