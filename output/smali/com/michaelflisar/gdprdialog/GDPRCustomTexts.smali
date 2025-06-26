.class public Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public e:I

.field public f:Ljava/lang/String;

.field public g:I

.field public h:Ljava/lang/String;

.field public i:I

.field public j:Ljava/lang/String;

.field public k:I

.field public l:Ljava/lang/String;

.field public m:I

.field public n:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/michaelflisar/gdprdialog/GDPRCustomTexts$a;

    invoke-direct {v0}, Lcom/michaelflisar/gdprdialog/GDPRCustomTexts$a;-><init>()V

    sput-object v0, Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;->e:I

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;->f:Ljava/lang/String;

    .line 4
    iput v0, p0, Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;->g:I

    .line 5
    iput-object v1, p0, Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;->h:Ljava/lang/String;

    .line 6
    iput v0, p0, Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;->i:I

    .line 7
    iput-object v1, p0, Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;->j:Ljava/lang/String;

    .line 8
    iput v0, p0, Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;->k:I

    .line 9
    iput-object v1, p0, Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;->l:Ljava/lang/String;

    .line 10
    iput v0, p0, Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;->m:I

    .line 11
    iput-object v1, p0, Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;->n:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;->e:I

    const/4 v1, 0x0

    .line 14
    iput-object v1, p0, Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;->f:Ljava/lang/String;

    .line 15
    iput v0, p0, Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;->g:I

    .line 16
    iput-object v1, p0, Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;->h:Ljava/lang/String;

    .line 17
    iput v0, p0, Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;->i:I

    .line 18
    iput-object v1, p0, Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;->j:Ljava/lang/String;

    .line 19
    iput v0, p0, Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;->k:I

    .line 20
    iput-object v1, p0, Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;->l:Ljava/lang/String;

    .line 21
    iput v0, p0, Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;->m:I

    .line 22
    iput-object v1, p0, Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;->n:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;->e:I

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;->f:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;->g:I

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;->h:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;->i:I

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;->j:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;->k:I

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;->l:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;->m:I

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;->n:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;->f:Ljava/lang/String;

    :goto_0
    return-object p1
.end method

.method public final b()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;->e:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-object p2, p0, Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget p2, p0, Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;->g:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget-object p2, p0, Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;->h:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget p2, p0, Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;->i:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget-object p2, p0, Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;->j:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget p2, p0, Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;->k:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget-object p2, p0, Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;->l:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget p2, p0, Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;->m:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    iget-object p2, p0, Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;->n:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
