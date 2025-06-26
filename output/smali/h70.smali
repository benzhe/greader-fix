.class public final Lh70;
.super Lsd3;
.source "SourceFile"

# interfaces
.implements Lu70;


# instance fields
.field public final e:Landroid/graphics/drawable/Drawable;

.field public final f:Landroid/net/Uri;

.field public final g:D

.field public final h:I

.field public final i:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;DII)V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.formats.client.INativeAdImage"

    .line 1
    invoke-direct {p0, v0}, Lsd3;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lh70;->e:Landroid/graphics/drawable/Drawable;

    .line 3
    iput-object p2, p0, Lh70;->f:Landroid/net/Uri;

    .line 4
    iput-wide p3, p0, Lh70;->g:D

    .line 5
    iput p5, p0, Lh70;->h:I

    .line 6
    iput p6, p0, Lh70;->i:I

    return-void
.end method

.method public static W6(Landroid/os/IBinder;)Lu70;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.formats.client.INativeAdImage"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lu70;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lu70;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lw70;

    invoke-direct {v0, p0}, Lw70;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public final O3()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lh70;->g:D

    return-wide v0
.end method

.method public final V6(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_4

    const/4 p4, 0x2

    if-eq p1, p4, :cond_3

    const/4 p4, 0x3

    if-eq p1, p4, :cond_2

    const/4 p4, 0x4

    if-eq p1, p4, :cond_1

    const/4 p4, 0x5

    if-eq p1, p4, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 1
    :cond_0
    iget p1, p0, Lh70;->i:I

    .line 2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 4
    :cond_1
    iget p1, p0, Lh70;->h:I

    .line 5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 7
    :cond_2
    iget-wide v0, p0, Lh70;->g:D

    .line 8
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 9
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    goto :goto_0

    .line 10
    :cond_3
    iget-object p1, p0, Lh70;->f:Landroid/net/Uri;

    .line 11
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 12
    invoke-static {p3, p1}, Lrd3;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 13
    :cond_4
    invoke-virtual {p0}, Lh70;->q2()Lx20;

    move-result-object p1

    .line 14
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 15
    invoke-static {p3, p1}, Lrd3;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    :goto_0
    return p2
.end method

.method public final getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lh70;->i:I

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lh70;->h:I

    return v0
.end method

.method public final i0()Landroid/net/Uri;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lh70;->f:Landroid/net/Uri;

    return-object v0
.end method

.method public final q2()Lx20;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lh70;->e:Landroid/graphics/drawable/Drawable;

    .line 2
    new-instance v1, Ly20;

    invoke-direct {v1, v0}, Ly20;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method
