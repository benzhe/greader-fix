.class public final Lcom/google/firebase/Timestamp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/firebase/Timestamp;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/firebase/Timestamp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final e:J

.field public final f:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/firebase/Timestamp$a;

    invoke-direct {v0}, Lcom/google/firebase/Timestamp$a;-><init>()V

    sput-object v0, Lcom/google/firebase/Timestamp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1, p2, p3}, Lcom/google/firebase/Timestamp;->k(JI)V

    .line 3
    iput-wide p1, p0, Lcom/google/firebase/Timestamp;->e:J

    .line 4
    iput p3, p0, Lcom/google/firebase/Timestamp;->f:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/firebase/Timestamp;->e:J

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/google/firebase/Timestamp;->f:I

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 6

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    .line 10
    div-long v4, v0, v2

    .line 11
    rem-long/2addr v0, v2

    long-to-int p1, v0

    const v0, 0xf4240

    mul-int p1, p1, v0

    if-gez p1, :cond_0

    const-wide/16 v0, 0x1

    sub-long/2addr v4, v0

    const v0, 0x3b9aca00

    add-int/2addr p1, v0

    .line 12
    :cond_0
    invoke-static {v4, v5, p1}, Lcom/google/firebase/Timestamp;->k(JI)V

    .line 13
    iput-wide v4, p0, Lcom/google/firebase/Timestamp;->e:J

    .line 14
    iput p1, p0, Lcom/google/firebase/Timestamp;->f:I

    return-void
.end method

.method public static k(JI)V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    new-array v3, v0, [Ljava/lang/Object;

    .line 1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "Timestamp nanoseconds out of range: %s"

    invoke-static {v2, v4, v3}, Lc50;->q(ZLjava/lang/String;[Ljava/lang/Object;)V

    int-to-double v2, p2

    const-wide v5, 0x41cdcd6500000000L    # 1.0E9

    cmpg-double v7, v2, v5

    if-gez v7, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    new-array v3, v0, [Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v1

    invoke-static {v2, v4, v3}, Lc50;->q(ZLjava/lang/String;[Ljava/lang/Object;)V

    const-wide v2, -0xe7791f700L

    cmp-long p2, p0, v2

    if-ltz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    :goto_2
    new-array v2, v0, [Ljava/lang/Object;

    .line 3
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v3, "Timestamp seconds out of range: %s"

    invoke-static {p2, v3, v2}, Lc50;->q(ZLjava/lang/String;[Ljava/lang/Object;)V

    const-wide v4, 0x3afff44180L

    cmp-long p2, p0, v4

    if-gez p2, :cond_3

    const/4 p2, 0x1

    goto :goto_3

    :cond_3
    const/4 p2, 0x0

    :goto_3
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v0, v1

    invoke-static {p2, v3, v0}, Lc50;->q(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/google/firebase/Timestamp;

    invoke-virtual {p0, p1}, Lcom/google/firebase/Timestamp;->i(Lcom/google/firebase/Timestamp;)I

    move-result p1

    return p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/firebase/Timestamp;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/google/firebase/Timestamp;

    invoke-virtual {p0, p1}, Lcom/google/firebase/Timestamp;->i(Lcom/google/firebase/Timestamp;)I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/firebase/Timestamp;->e:J

    long-to-int v2, v0

    mul-int/lit8 v2, v2, 0x25

    mul-int/lit8 v2, v2, 0x25

    const/16 v3, 0x20

    shr-long/2addr v0, v3

    long-to-int v1, v0

    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x25

    .line 2
    iget v0, p0, Lcom/google/firebase/Timestamp;->f:I

    add-int/2addr v2, v0

    return v2
.end method

.method public i(Lcom/google/firebase/Timestamp;)I
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/firebase/Timestamp;->e:J

    iget-wide v2, p1, Lcom/google/firebase/Timestamp;->e:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    iget v0, p0, Lcom/google/firebase/Timestamp;->f:I

    iget p1, p1, Lcom/google/firebase/Timestamp;->f:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->signum(I)I

    move-result p1

    return p1

    :cond_0
    sub-long/2addr v0, v2

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "Timestamp(seconds="

    .line 1
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/firebase/Timestamp;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", nanoseconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/firebase/Timestamp;->f:I

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Ljo;->q(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/firebase/Timestamp;->e:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2
    iget p2, p0, Lcom/google/firebase/Timestamp;->f:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
