.class public Lcom/michaelflisar/gdprdialog/GDPRSetup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public e:Ljava/lang/String;

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:[Lcom/michaelflisar/gdprdialog/GDPRNetwork;

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:[Lwl6;

.field public n:Z

.field public o:Z

.field public p:I

.field public q:Z

.field public r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public s:Z

.field public t:Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;

.field public u:I

.field public v:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/michaelflisar/gdprdialog/GDPRSetup$a;

    invoke-direct {v0}, Lcom/michaelflisar/gdprdialog/GDPRSetup$a;-><init>()V

    sput-object v0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 8

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->e:Ljava/lang/String;

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->f:Z

    .line 25
    iput-boolean v0, p0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->g:Z

    .line 26
    iput-boolean v0, p0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->h:Z

    .line 27
    iput-boolean v0, p0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->j:Z

    .line 28
    iput-boolean v0, p0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->k:Z

    .line 29
    iput-boolean v0, p0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->l:Z

    .line 30
    iput-boolean v0, p0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->n:Z

    .line 31
    iput-boolean v0, p0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->o:Z

    .line 32
    iput v0, p0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->p:I

    .line 33
    iput-boolean v0, p0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->q:Z

    .line 34
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->r:Ljava/util/ArrayList;

    const/4 v1, 0x1

    .line 35
    iput-boolean v1, p0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->s:Z

    .line 36
    new-instance v2, Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;

    invoke-direct {v2}, Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;-><init>()V

    iput-object v2, p0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->t:Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;

    const/16 v2, 0xbb8

    .line 37
    iput v2, p0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->u:I

    const/16 v2, 0x1388

    .line 38
    iput v2, p0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->v:I

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->e:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->f:Z

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v1, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->g:Z

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v1, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    iput-boolean v2, p0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->h:Z

    .line 43
    const-class v2, Lcom/michaelflisar/gdprdialog/GDPRNetwork;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v2

    .line 44
    array-length v3, v2

    new-array v3, v3, [Lcom/michaelflisar/gdprdialog/GDPRNetwork;

    iput-object v3, p0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->i:[Lcom/michaelflisar/gdprdialog/GDPRNetwork;

    const/4 v3, 0x0

    .line 45
    :goto_3
    array-length v4, v2

    if-ge v3, v4, :cond_3

    .line 46
    iget-object v4, p0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->i:[Lcom/michaelflisar/gdprdialog/GDPRNetwork;

    aget-object v5, v2, v3

    check-cast v5, Lcom/michaelflisar/gdprdialog/GDPRNetwork;

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 47
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v1, :cond_4

    const/4 v2, 0x1

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    iput-boolean v2, p0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->j:Z

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v1, :cond_5

    const/4 v2, 0x1

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    iput-boolean v2, p0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->k:Z

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v1, :cond_6

    const/4 v2, 0x1

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    iput-boolean v2, p0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->l:Z

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 51
    new-array v3, v2, [Lwl6;

    iput-object v3, p0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->m:[Lwl6;

    .line 52
    new-array v3, v2, [I

    if-lez v2, :cond_7

    .line 53
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readIntArray([I)V

    :cond_7
    const/4 v4, 0x0

    :goto_7
    if-ge v4, v2, :cond_8

    .line 54
    iget-object v5, p0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->m:[Lwl6;

    invoke-static {}, Lwl6;->values()[Lwl6;

    move-result-object v6

    aget v7, v3, v4

    aget-object v6, v6, v7

    aput-object v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 55
    :cond_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v1, :cond_9

    const/4 v2, 0x1

    goto :goto_8

    :cond_9
    const/4 v2, 0x0

    :goto_8
    iput-boolean v2, p0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->n:Z

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v1, :cond_a

    const/4 v2, 0x1

    goto :goto_9

    :cond_a
    const/4 v2, 0x0

    :goto_9
    iput-boolean v2, p0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->o:Z

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->p:I

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v1, :cond_b

    const/4 v2, 0x1

    goto :goto_a

    :cond_b
    const/4 v2, 0x0

    :goto_a
    iput-boolean v2, p0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->q:Z

    .line 59
    iget-object v2, p0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->r:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->u:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->v:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    iput-boolean v0, p0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->s:Z

    .line 63
    const-class v0, Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;

    iput-object p1, p0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->t:Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;

    return-void
.end method

.method public varargs constructor <init>([Lcom/michaelflisar/gdprdialog/GDPRNetwork;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->e:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->f:Z

    .line 4
    iput-boolean v0, p0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->g:Z

    .line 5
    iput-boolean v0, p0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->h:Z

    .line 6
    iput-boolean v0, p0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->j:Z

    .line 7
    iput-boolean v0, p0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->k:Z

    .line 8
    iput-boolean v0, p0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->l:Z

    .line 9
    iput-boolean v0, p0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->n:Z

    .line 10
    iput-boolean v0, p0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->o:Z

    .line 11
    iput v0, p0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->p:I

    .line 12
    iput-boolean v0, p0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->q:Z

    .line 13
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->r:Ljava/util/ArrayList;

    const/4 v1, 0x1

    .line 14
    iput-boolean v1, p0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->s:Z

    .line 15
    new-instance v1, Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;

    invoke-direct {v1}, Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;-><init>()V

    iput-object v1, p0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->t:Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;

    const/16 v1, 0xbb8

    .line 16
    iput v1, p0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->u:I

    const/16 v1, 0x1388

    .line 17
    iput v1, p0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->v:I

    .line 18
    array-length v1, p1

    if-eqz v1, :cond_0

    .line 19
    iput-object p1, p0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->i:[Lcom/michaelflisar/gdprdialog/GDPRNetwork;

    new-array p1, v0, [Lwl6;

    .line 20
    iput-object p1, p0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->m:[Lwl6;

    return-void

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "At least one ad network must be provided, otherwise this setup does not make any sense."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->i:[Lcom/michaelflisar/gdprdialog/GDPRNetwork;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 2
    iget-boolean v4, v4, Lcom/michaelflisar/gdprdialog/GDPRNetwork;->i:Z

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public b()Ljava/util/HashSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->i:[Lcom/michaelflisar/gdprdialog/GDPRNetwork;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 3
    iget-object v4, v4, Lcom/michaelflisar/gdprdialog/GDPRNetwork;->g:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    iget-object p2, p0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-boolean p2, p0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->f:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget-boolean p2, p0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->g:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget-boolean p2, p0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->h:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget-object p2, p0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->i:[Lcom/michaelflisar/gdprdialog/GDPRNetwork;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 6
    iget-boolean p2, p0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->j:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 7
    iget-boolean p2, p0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->k:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 8
    iget-boolean p2, p0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->l:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 9
    iget-object p2, p0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->m:[Lwl6;

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    iget-object p2, p0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->m:[Lwl6;

    array-length v1, p2

    if-lez v1, :cond_1

    .line 11
    array-length p2, p2

    new-array p2, p2, [I

    const/4 v1, 0x0

    .line 12
    :goto_0
    iget-object v2, p0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->m:[Lwl6;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 13
    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 15
    :cond_1
    iget-boolean p2, p0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->n:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 16
    iget-boolean p2, p0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->o:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 17
    iget p2, p0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->p:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 18
    iget-boolean p2, p0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->q:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 19
    iget-object p2, p0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->r:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 20
    iget p2, p0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->u:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    iget p2, p0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->v:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    iget-boolean p2, p0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->s:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 23
    iget-object p2, p0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->t:Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
