.class public final Lcom/google/android/gms/internal/ads/zzht;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzht;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A:J

.field public final B:I

.field public final C:Ljava/lang/String;

.field public final D:I

.field public E:I

.field public final e:Ljava/lang/String;

.field public final f:I

.field public final g:Ljava/lang/String;

.field public final h:Lcom/google/android/gms/internal/ads/zzmh;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:I

.field public final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public final m:Lcom/google/android/gms/internal/ads/zzjo;

.field public final n:I

.field public final o:I

.field public final p:F

.field public final q:I

.field public final r:F

.field public final s:I

.field public final t:[B

.field public final u:Lcom/google/android/gms/internal/ads/zzpy;

.field public final v:I

.field public final w:I

.field public final x:I

.field public final y:I

.field public final z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lke3;

    invoke-direct {v0}, Lke3;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzht;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzht;->e:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzht;->i:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzht;->j:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzht;->g:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzht;->f:I

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzht;->k:I

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzht;->n:I

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzht;->o:I

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzht;->p:F

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzht;->q:I

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzht;->r:F

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzht;->t:[B

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzht;->s:I

    .line 44
    const-class v0, Lcom/google/android/gms/internal/ads/zzpy;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzpy;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzht;->u:Lcom/google/android/gms/internal/ads/zzpy;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzht;->v:I

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzht;->w:I

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzht;->x:I

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzht;->y:I

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzht;->z:I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzht;->B:I

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzht;->C:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzht;->D:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzht;->A:J

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 55
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzht;->l:Ljava/util/List;

    :goto_2
    if-ge v1, v0, :cond_2

    .line 56
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzht;->l:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 57
    :cond_2
    const-class v0, Lcom/google/android/gms/internal/ads/zzjo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzjo;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzht;->m:Lcom/google/android/gms/internal/ads/zzjo;

    .line 58
    const-class v0, Lcom/google/android/gms/internal/ads/zzmh;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzmh;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzht;->h:Lcom/google/android/gms/internal/ads/zzmh;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/android/gms/internal/ads/zzpy;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/gms/internal/ads/zzjo;Lcom/google/android/gms/internal/ads/zzmh;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIFIF[BI",
            "Lcom/google/android/gms/internal/ads/zzpy;",
            "IIIIII",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/util/List<",
            "[B>;",
            "Lcom/google/android/gms/internal/ads/zzjo;",
            "Lcom/google/android/gms/internal/ads/zzmh;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzht;->e:Ljava/lang/String;

    move-object v1, p2

    .line 3
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzht;->i:Ljava/lang/String;

    move-object v1, p3

    .line 4
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzht;->j:Ljava/lang/String;

    move-object v1, p4

    .line 5
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzht;->g:Ljava/lang/String;

    move v1, p5

    .line 6
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzht;->f:I

    move v1, p6

    .line 7
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzht;->k:I

    move v1, p7

    .line 8
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzht;->n:I

    move v1, p8

    .line 9
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzht;->o:I

    move v1, p9

    .line 10
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzht;->p:F

    move v1, p10

    .line 11
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzht;->q:I

    move v1, p11

    .line 12
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzht;->r:F

    move-object v1, p12

    .line 13
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzht;->t:[B

    move/from16 v1, p13

    .line 14
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzht;->s:I

    move-object/from16 v1, p14

    .line 15
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzht;->u:Lcom/google/android/gms/internal/ads/zzpy;

    move/from16 v1, p15

    .line 16
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzht;->v:I

    move/from16 v1, p16

    .line 17
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzht;->w:I

    move/from16 v1, p17

    .line 18
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzht;->x:I

    move/from16 v1, p18

    .line 19
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzht;->y:I

    move/from16 v1, p19

    .line 20
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzht;->z:I

    move/from16 v1, p20

    .line 21
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzht;->B:I

    move-object/from16 v1, p21

    .line 22
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzht;->C:Ljava/lang/String;

    move/from16 v1, p22

    .line 23
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzht;->D:I

    move-wide/from16 v1, p23

    .line 24
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzht;->A:J

    if-nez p25, :cond_0

    .line 25
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object/from16 v1, p25

    .line 26
    :goto_0
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzht;->l:Ljava/util/List;

    move-object/from16 v1, p26

    .line 27
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzht;->m:Lcom/google/android/gms/internal/ads/zzjo;

    move-object/from16 v1, p27

    .line 28
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzht;->h:Lcom/google/android/gms/internal/ads/zzmh;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/gms/internal/ads/zzjo;ILjava/lang/String;)Lcom/google/android/gms/internal/ads/zzht;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIII",
            "Ljava/util/List<",
            "[B>;",
            "Lcom/google/android/gms/internal/ads/zzjo;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzht;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move/from16 v6, p2

    move/from16 v15, p3

    move/from16 v16, p4

    move/from16 v17, p5

    move-object/from16 v25, p6

    move-object/from16 v26, p7

    move/from16 v20, p8

    move-object/from16 v21, p9

    .line 1
    new-instance v28, Lcom/google/android/gms/internal/ads/zzht;

    move-object/from16 v0, v28

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v10, -0x1

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v22, -0x1

    const-wide v23, 0x7fffffffffffffffL

    const/16 v27, 0x0

    invoke-direct/range {v0 .. v27}, Lcom/google/android/gms/internal/ads/zzht;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/android/gms/internal/ads/zzpy;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/gms/internal/ads/zzjo;Lcom/google/android/gms/internal/ads/zzmh;)V

    return-object v28
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;IIILjava/util/List;IF[BILcom/google/android/gms/internal/ads/zzpy;Lcom/google/android/gms/internal/ads/zzjo;)Lcom/google/android/gms/internal/ads/zzht;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIF",
            "Ljava/util/List<",
            "[B>;IF[BI",
            "Lcom/google/android/gms/internal/ads/zzpy;",
            "Lcom/google/android/gms/internal/ads/zzjo;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzht;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v25, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move-object/from16 v12, p8

    move/from16 v13, p9

    move-object/from16 v14, p10

    move-object/from16 v26, p11

    .line 1
    new-instance v28, Lcom/google/android/gms/internal/ads/zzht;

    move-object/from16 v0, v28

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, -0x1

    const-wide v23, 0x7fffffffffffffffL

    const/16 v27, 0x0

    invoke-direct/range {v0 .. v27}, Lcom/google/android/gms/internal/ads/zzht;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/android/gms/internal/ads/zzpy;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/gms/internal/ads/zzjo;Lcom/google/android/gms/internal/ads/zzmh;)V

    return-object v28
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;IILcom/google/android/gms/internal/ads/zzjo;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzht;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIII",
            "Ljava/util/List<",
            "[B>;",
            "Lcom/google/android/gms/internal/ads/zzjo;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzht;"
        }
    .end annotation

    const/4 v2, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v7, p4

    move-object v9, p5

    .line 1
    invoke-static/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/zzht;->a(Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/gms/internal/ads/zzjo;ILjava/lang/String;)Lcom/google/android/gms/internal/ads/zzht;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzjo;)Lcom/google/android/gms/internal/ads/zzht;
    .locals 8

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    const-wide v5, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 2
    invoke-static/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzht;->e(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzjo;JLjava/util/List;)Lcom/google/android/gms/internal/ads/zzht;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzjo;JLjava/util/List;)Lcom/google/android/gms/internal/ads/zzht;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "I",
            "Lcom/google/android/gms/internal/ads/zzjo;",
            "J",
            "Ljava/util/List<",
            "[B>;)",
            "Lcom/google/android/gms/internal/ads/zzht;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move/from16 v20, p2

    move-object/from16 v21, p3

    move-object/from16 v26, p4

    move-wide/from16 v23, p5

    move-object/from16 v25, p7

    .line 1
    new-instance v28, Lcom/google/android/gms/internal/ads/zzht;

    move-object/from16 v0, v28

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v10, -0x1

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v22, -0x1

    const/16 v27, 0x0

    invoke-direct/range {v0 .. v27}, Lcom/google/android/gms/internal/ads/zzht;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/android/gms/internal/ads/zzpy;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/gms/internal/ads/zzjo;Lcom/google/android/gms/internal/ads/zzmh;)V

    return-object v28
.end method

.method public static f(Landroid/media/MediaFormat;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 1
    const-class v2, Lcom/google/android/gms/internal/ads/zzht;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzht;

    .line 3
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzht;->f:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzht;->f:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzht;->k:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzht;->k:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzht;->n:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzht;->n:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzht;->o:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzht;->o:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzht;->p:F

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzht;->p:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_5

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzht;->q:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzht;->q:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzht;->r:F

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzht;->r:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_5

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzht;->s:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzht;->s:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzht;->v:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzht;->v:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzht;->w:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzht;->w:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzht;->x:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzht;->x:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzht;->y:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzht;->y:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzht;->z:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzht;->z:I

    if-ne v2, v3, :cond_5

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzht;->A:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzht;->A:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_5

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzht;->B:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzht;->B:I

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzht;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzht;->e:Ljava/lang/String;

    .line 4
    invoke-static {v2, v3}, Lel3;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzht;->C:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzht;->C:Ljava/lang/String;

    .line 5
    invoke-static {v2, v3}, Lel3;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzht;->D:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzht;->D:I

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzht;->i:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzht;->i:Ljava/lang/String;

    .line 6
    invoke-static {v2, v3}, Lel3;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzht;->j:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzht;->j:Ljava/lang/String;

    .line 7
    invoke-static {v2, v3}, Lel3;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzht;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzht;->g:Ljava/lang/String;

    .line 8
    invoke-static {v2, v3}, Lel3;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzht;->m:Lcom/google/android/gms/internal/ads/zzjo;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzht;->m:Lcom/google/android/gms/internal/ads/zzjo;

    .line 9
    invoke-static {v2, v3}, Lel3;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzht;->h:Lcom/google/android/gms/internal/ads/zzmh;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzht;->h:Lcom/google/android/gms/internal/ads/zzmh;

    .line 10
    invoke-static {v2, v3}, Lel3;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzht;->u:Lcom/google/android/gms/internal/ads/zzpy;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzht;->u:Lcom/google/android/gms/internal/ads/zzpy;

    .line 11
    invoke-static {v2, v3}, Lel3;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzht;->t:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzht;->t:[B

    .line 12
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzht;->l:Ljava/util/List;

    .line 13
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzht;->l:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 14
    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzht;->l:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 15
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzht;->l:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zzht;->l:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_3

    return v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method public final g(J)Lcom/google/android/gms/internal/ads/zzht;
    .locals 30

    move-object/from16 v0, p0

    move-wide/from16 v24, p1

    .line 1
    new-instance v29, Lcom/google/android/gms/internal/ads/zzht;

    move-object/from16 v1, v29

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzht;->e:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzht;->i:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzht;->j:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzht;->g:Ljava/lang/String;

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzht;->f:I

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzht;->k:I

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzht;->n:I

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzht;->o:I

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzht;->p:F

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzht;->q:I

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzht;->r:F

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzht;->t:[B

    iget v14, v0, Lcom/google/android/gms/internal/ads/zzht;->s:I

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzht;->u:Lcom/google/android/gms/internal/ads/zzpy;

    move-object/from16 p1, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzht;->v:I

    move/from16 v16, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzht;->w:I

    move/from16 v17, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzht;->x:I

    move/from16 v18, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzht;->y:I

    move/from16 v19, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzht;->z:I

    move/from16 v20, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzht;->B:I

    move/from16 v21, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzht;->C:Ljava/lang/String;

    move-object/from16 v22, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzht;->D:I

    move/from16 v23, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzht;->l:Ljava/util/List;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzht;->m:Lcom/google/android/gms/internal/ads/zzjo;

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzht;->h:Lcom/google/android/gms/internal/ads/zzmh;

    move-object/from16 v28, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v28}, Lcom/google/android/gms/internal/ads/zzht;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/android/gms/internal/ads/zzpy;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/gms/internal/ads/zzjo;Lcom/google/android/gms/internal/ads/zzmh;)V

    return-object v29
.end method

.method public final h()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzht;->n:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzht;->o:I

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    mul-int v0, v0, v2

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzht;->E:I

    if-nez v0, :cond_7

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzht;->e:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzht;->i:Ljava/lang/String;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzht;->j:Ljava/lang/String;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzht;->g:Ljava/lang/String;

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzht;->f:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzht;->n:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzht;->o:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 9
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzht;->v:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 10
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzht;->w:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 11
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzht;->C:Ljava/lang/String;

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 12
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzht;->D:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 13
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzht;->m:Lcom/google/android/gms/internal/ads/zzjo;

    if-nez v2, :cond_5

    const/4 v2, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzjo;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 14
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzht;->h:Lcom/google/android/gms/internal/ads/zzmh;

    if-nez v2, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzmh;->hashCode()I

    move-result v1

    :goto_6
    add-int/2addr v0, v1

    .line 15
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzht;->E:I

    .line 16
    :cond_7
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzht;->E:I

    return v0
.end method

.method public final i()Landroid/media/MediaFormat;
    .locals 4

    .line 1
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzht;->j:Ljava/lang/String;

    const-string v2, "mime"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzht;->C:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "language"

    .line 4
    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzht;->k:I

    const-string v2, "max-input-size"

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzht;->f(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 6
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzht;->n:I

    const-string v2, "width"

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzht;->f(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 7
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzht;->o:I

    const-string v2, "height"

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzht;->f(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 8
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzht;->p:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_1

    const-string v2, "frame-rate"

    .line 9
    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    .line 10
    :cond_1
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzht;->q:I

    const-string v2, "rotation-degrees"

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzht;->f(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 11
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzht;->v:I

    const-string v2, "channel-count"

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzht;->f(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 12
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzht;->w:I

    const-string v2, "sample-rate"

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzht;->f(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 13
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzht;->y:I

    const-string v2, "encoder-delay"

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzht;->f(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 14
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzht;->z:I

    const-string v2, "encoder-padding"

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzht;->f(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const/4 v1, 0x0

    .line 15
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzht;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    const/16 v2, 0xf

    const-string v3, "csd-"

    .line 16
    invoke-static {v2, v3, v1}, Ljo;->M(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzht;->l:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 17
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzht;->u:Lcom/google/android/gms/internal/ads/zzpy;

    if-eqz v1, :cond_3

    .line 18
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzpy;->g:I

    const-string v3, "color-transfer"

    invoke-static {v0, v3, v2}, Lcom/google/android/gms/internal/ads/zzht;->f(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 19
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzpy;->e:I

    const-string v3, "color-standard"

    invoke-static {v0, v3, v2}, Lcom/google/android/gms/internal/ads/zzht;->f(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 20
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzpy;->f:I

    const-string v3, "color-range"

    invoke-static {v0, v3, v2}, Lcom/google/android/gms/internal/ads/zzht;->f(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 21
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzpy;->h:[B

    if-eqz v1, :cond_3

    .line 22
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    const-string v2, "hdr-static-info"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    :cond_3
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzht;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzht;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzht;->j:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzht;->f:I

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzht;->C:Ljava/lang/String;

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzht;->n:I

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzht;->o:I

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzht;->p:F

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzht;->v:I

    iget v9, p0, Lcom/google/android/gms/internal/ads/zzht;->w:I

    const/16 v10, 0x64

    invoke-static {v0, v10}, Ljo;->x(Ljava/lang/String;I)I

    move-result v10

    invoke-static {v1, v10}, Ljo;->x(Ljava/lang/String;I)I

    move-result v10

    invoke-static {v2, v10}, Ljo;->x(Ljava/lang/String;I)I

    move-result v10

    invoke-static {v4, v10}, Ljo;->x(Ljava/lang/String;I)I

    move-result v10

    const-string v11, "Format("

    const-string v12, ", "

    invoke-static {v10, v11, v0, v12, v1}, Ljo;->y(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "], ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "])"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzht;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzht;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzht;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzht;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzht;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzht;->k:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzht;->n:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzht;->o:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzht;->p:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 10
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzht;->q:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzht;->r:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzht;->t:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzht;->t:[B

    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 15
    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzht;->s:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzht;->u:Lcom/google/android/gms/internal/ads/zzpy;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 17
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzht;->v:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 18
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzht;->w:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzht;->x:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 20
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzht;->y:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzht;->z:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzht;->B:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 23
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzht;->C:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzht;->D:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzht;->A:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 26
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzht;->l:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    .line 27
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_2

    .line 28
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzht;->l:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 29
    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzht;->m:Lcom/google/android/gms/internal/ads/zzjo;

    invoke-virtual {p1, p2, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 30
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzht;->h:Lcom/google/android/gms/internal/ads/zzmh;

    invoke-virtual {p1, p2, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
