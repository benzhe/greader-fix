.class public Lpl/droidsonroids/gif/GifViewSavedState;
.super Landroid/view/View$BaseSavedState;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lpl/droidsonroids/gif/GifViewSavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final e:[[J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lpl/droidsonroids/gif/GifViewSavedState$a;

    invoke-direct {v0}, Lpl/droidsonroids/gif/GifViewSavedState$a;-><init>()V

    sput-object v0, Lpl/droidsonroids/gif/GifViewSavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Lpl/droidsonroids/gif/GifViewSavedState$a;)V
    .locals 2

    .line 12
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    new-array p2, p2, [[J

    iput-object p2, p0, Lpl/droidsonroids/gif/GifViewSavedState;->e:[[J

    const/4 p2, 0x0

    .line 14
    :goto_0
    iget-object v0, p0, Lpl/droidsonroids/gif/GifViewSavedState;->e:[[J

    array-length v1, v0

    if-ge p2, v1, :cond_0

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v1

    aput-object v1, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;[J)V
    .locals 1

    .line 16
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    const/4 p1, 0x1

    new-array p1, p1, [[J

    .line 17
    iput-object p1, p0, Lpl/droidsonroids/gif/GifViewSavedState;->e:[[J

    const/4 v0, 0x0

    aput-object p2, p1, v0

    return-void
.end method

.method public varargs constructor <init>(Landroid/os/Parcelable;[Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2
    array-length p1, p2

    new-array p1, p1, [[J

    iput-object p1, p0, Lpl/droidsonroids/gif/GifViewSavedState;->e:[[J

    const/4 p1, 0x0

    .line 3
    :goto_0
    array-length v0, p2

    if-ge p1, v0, :cond_1

    .line 4
    aget-object v0, p2, p1

    .line 5
    instance-of v1, v0, Lr78;

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, p0, Lpl/droidsonroids/gif/GifViewSavedState;->e:[[J

    check-cast v0, Lr78;

    iget-object v0, v0, Lr78;->k:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-wide v2, v0, Lpl/droidsonroids/gif/GifInfoHandle;->a:J

    invoke-static {v2, v3}, Lpl/droidsonroids/gif/GifInfoHandle;->getSavedState(J)[J

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 9
    aput-object v2, v1, p1

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 10
    monitor-exit v0

    throw p1

    .line 11
    :cond_0
    iget-object v0, p0, Lpl/droidsonroids/gif/GifViewSavedState;->e:[[J

    const/4 v1, 0x0

    aput-object v1, v0, p1

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lpl/droidsonroids/gif/GifViewSavedState;->e:[[J

    aget-object v1, v0, p2

    if-eqz v1, :cond_0

    instance-of v1, p1, Lr78;

    if-eqz v1, :cond_0

    .line 2
    check-cast p1, Lr78;

    .line 3
    iget-object v1, p1, Lr78;->k:Lpl/droidsonroids/gif/GifInfoHandle;

    aget-object p2, v0, p2

    iget-object v0, p1, Lr78;->j:Landroid/graphics/Bitmap;

    .line 4
    monitor-enter v1

    .line 5
    :try_start_0
    iget-wide v2, v1, Lpl/droidsonroids/gif/GifInfoHandle;->a:J

    invoke-static {v2, v3, p2, v0}, Lpl/droidsonroids/gif/GifInfoHandle;->restoreSavedState(J[JLandroid/graphics/Bitmap;)I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    int-to-long v0, p2

    .line 6
    invoke-virtual {p1, v0, v1}, Lr78;->b(J)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 7
    monitor-exit v1

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget-object p2, p0, Lpl/droidsonroids/gif/GifViewSavedState;->e:[[J

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget-object p2, p0, Lpl/droidsonroids/gif/GifViewSavedState;->e:[[J

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeLongArray([J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
