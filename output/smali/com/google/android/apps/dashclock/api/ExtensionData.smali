.class public Lcom/google/android/apps/dashclock/api/ExtensionData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/apps/dashclock/api/ExtensionData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public e:Z

.field public f:I

.field public g:Landroid/net/Uri;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Landroid/content/Intent;

.field public l:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/apps/dashclock/api/ExtensionData$a;

    invoke-direct {v0}, Lcom/google/android/apps/dashclock/api/ExtensionData$a;-><init>()V

    sput-object v0, Lcom/google/android/apps/dashclock/api/ExtensionData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->e:Z

    .line 3
    iput v0, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->f:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->g:Landroid/net/Uri;

    .line 5
    iput-object v0, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->h:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->i:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->j:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->k:Landroid/content/Intent;

    .line 9
    iput-object v0, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->l:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Lcom/google/android/apps/dashclock/api/ExtensionData$a;)V
    .locals 6

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    .line 11
    iput-boolean p2, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->e:Z

    .line 12
    iput p2, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->f:I

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->g:Landroid/net/Uri;

    .line 14
    iput-object v0, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->h:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->i:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->j:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->k:Landroid/content/Intent;

    .line 18
    iput-object v0, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->l:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    const/4 v4, 0x1

    if-lt v1, v4, :cond_4

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iput-boolean v4, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->e:Z

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->f:I

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->h:Ljava/lang/String;

    .line 25
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 26
    iput-object v0, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->h:Ljava/lang/String;

    .line 27
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->i:Ljava/lang/String;

    .line 28
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 29
    iput-object v0, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->i:Ljava/lang/String;

    .line 30
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->j:Ljava/lang/String;

    .line 31
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 32
    iput-object v0, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->j:Ljava/lang/String;

    .line 33
    :cond_3
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->k:Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    :cond_4
    :goto_1
    const/4 p2, 0x2

    if-lt v1, p2, :cond_7

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->l:Ljava/lang/String;

    .line 35
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 36
    iput-object v0, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->l:Ljava/lang/String;

    .line 37
    :cond_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 38
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_2

    :cond_6
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->g:Landroid/net/Uri;

    :cond_7
    if-lt v1, p2, :cond_8

    add-int/2addr v3, v2

    .line 39
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    :cond_8
    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    if-ne p0, p1, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    :try_start_0
    check-cast p1, Lcom/google/android/apps/dashclock/api/ExtensionData;

    .line 2
    iget-boolean v1, p1, Lcom/google/android/apps/dashclock/api/ExtensionData;->e:Z

    iget-boolean v2, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->e:Z

    if-ne v1, v2, :cond_1

    iget v1, p1, Lcom/google/android/apps/dashclock/api/ExtensionData;->f:I

    iget v2, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->f:I

    if-ne v1, v2, :cond_1

    iget-object v1, p1, Lcom/google/android/apps/dashclock/api/ExtensionData;->g:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->g:Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/google/android/apps/dashclock/api/ExtensionData;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/google/android/apps/dashclock/api/ExtensionData;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->h:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/google/android/apps/dashclock/api/ExtensionData;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->i:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/google/android/apps/dashclock/api/ExtensionData;->j:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->j:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/google/android/apps/dashclock/api/ExtensionData;->k:Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->k:Landroid/content/Intent;

    invoke-static {v1, v2}, Lcom/google/android/apps/dashclock/api/ExtensionData;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p1, Lcom/google/android/apps/dashclock/api/ExtensionData;->l:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->l:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :catch_0
    :cond_1
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/4 p2, 0x2

    .line 1
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 5
    iget-boolean v2, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->e:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget v2, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->f:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget-object v2, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->h:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->h:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget-object v2, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->i:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v3

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->i:Ljava/lang/String;

    :goto_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget-object v2, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->j:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v3

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->j:Ljava/lang/String;

    :goto_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    iget-object v2, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->k:Landroid/content/Intent;

    if-nez v2, :cond_3

    move-object v0, v3

    goto :goto_3

    :cond_3
    invoke-virtual {v2, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, v3

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->l:Ljava/lang/String;

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->g:Landroid/net/Uri;

    if-nez v0, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_5
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    sub-int/2addr v0, v1

    .line 14
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 15
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    add-int/2addr v0, v1

    .line 16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
