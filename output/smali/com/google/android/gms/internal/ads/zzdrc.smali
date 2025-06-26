.class public final Lcom/google/android/gms/internal/ads/zzdrc;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzdrc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final e:[Lym2;

.field public final f:[I

.field public final g:[I

.field public final h:Landroid/content/Context;

.field public final i:I

.field public final j:Lym2;

.field public final k:I

.field public final l:I

.field public final m:I

.field public final n:Ljava/lang/String;

.field public final o:I

.field public final p:I

.field public final q:I

.field public final r:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lzm2;

    invoke-direct {v0}, Lzm2;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdrc;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIILjava/lang/String;II)V
    .locals 4

    .line 21
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 22
    invoke-static {}, Lym2;->values()[Lym2;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrc;->e:[Lym2;

    .line 23
    invoke-static {}, Lxm2;->a()[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzdrc;->f:[I

    .line 24
    sget-object v2, Lan2;->a:[I

    invoke-virtual {v2}, [I->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 25
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzdrc;->g:[I

    const/4 v3, 0x0

    .line 26
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzdrc;->h:Landroid/content/Context;

    .line 27
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdrc;->i:I

    .line 28
    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdrc;->j:Lym2;

    .line 29
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzdrc;->k:I

    .line 30
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzdrc;->l:I

    .line 31
    iput p4, p0, Lcom/google/android/gms/internal/ads/zzdrc;->m:I

    .line 32
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdrc;->n:Ljava/lang/String;

    .line 33
    iput p6, p0, Lcom/google/android/gms/internal/ads/zzdrc;->o:I

    .line 34
    aget p1, v1, p6

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdrc;->p:I

    .line 35
    iput p7, p0, Lcom/google/android/gms/internal/ads/zzdrc;->q:I

    .line 36
    aget p1, v2, p7

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdrc;->r:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lym2;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    invoke-static {}, Lym2;->values()[Lym2;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrc;->e:[Lym2;

    .line 3
    invoke-static {}, Lxm2;->a()[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrc;->f:[I

    .line 4
    sget-object v0, Lan2;->a:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrc;->g:[I

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdrc;->h:Landroid/content/Context;

    .line 7
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdrc;->i:I

    .line 8
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdrc;->j:Lym2;

    .line 9
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzdrc;->k:I

    .line 10
    iput p4, p0, Lcom/google/android/gms/internal/ads/zzdrc;->l:I

    .line 11
    iput p5, p0, Lcom/google/android/gms/internal/ads/zzdrc;->m:I

    .line 12
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdrc;->n:Ljava/lang/String;

    const-string p1, "oldest"

    .line 13
    invoke-virtual {p1, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "lru"

    .line 14
    invoke-virtual {p1, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "lfu"

    .line 15
    invoke-virtual {p1, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    .line 16
    :goto_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdrc;->p:I

    sub-int/2addr p1, p2

    .line 17
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdrc;->o:I

    const-string p1, "onAdClosed"

    .line 18
    invoke-virtual {p1, p8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzdrc;->r:I

    const/4 p1, 0x0

    .line 20
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdrc;->q:I

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 p2, 0x4f45

    .line 1
    invoke-static {p1, p2}, Lbi;->m0(Landroid/os/Parcel;I)I

    move-result p2

    const/4 v0, 0x1

    .line 2
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdrc;->i:I

    const/4 v2, 0x4

    .line 3
    invoke-static {p1, v0, v2}, Lbi;->r0(Landroid/os/Parcel;II)V

    .line 4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x2

    .line 5
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdrc;->k:I

    .line 6
    invoke-static {p1, v0, v2}, Lbi;->r0(Landroid/os/Parcel;II)V

    .line 7
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x3

    .line 8
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdrc;->l:I

    .line 9
    invoke-static {p1, v0, v2}, Lbi;->r0(Landroid/os/Parcel;II)V

    .line 10
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdrc;->m:I

    .line 12
    invoke-static {p1, v2, v2}, Lbi;->r0(Landroid/os/Parcel;II)V

    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x5

    .line 14
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdrc;->n:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v3}, Lbi;->i0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x6

    .line 15
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdrc;->o:I

    .line 16
    invoke-static {p1, v0, v2}, Lbi;->r0(Landroid/os/Parcel;II)V

    .line 17
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x7

    .line 18
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdrc;->q:I

    .line 19
    invoke-static {p1, v0, v2}, Lbi;->r0(Landroid/os/Parcel;II)V

    .line 20
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    invoke-static {p1, p2}, Lbi;->t0(Landroid/os/Parcel;I)V

    return-void
.end method
