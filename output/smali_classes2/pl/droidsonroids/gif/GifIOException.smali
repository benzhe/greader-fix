.class public Lpl/droidsonroids/gif/GifIOException;
.super Ljava/io/IOException;
.source "SourceFile"


# static fields
.field public static final synthetic e:I


# direct methods
.method public constructor <init>(I)V
    .locals 5

    .line 1
    invoke-static {}, Ls78;->values()[Ls78;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x15

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    .line 2
    iget v4, v3, Ls78;->f:I

    if-ne v4, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_1
    sget-object v3, Ls78;->A:Ls78;

    .line 4
    iput p1, v3, Ls78;->f:I

    .line 5
    :goto_1
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v2, v3, Ls78;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, v3, Ls78;->e:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "GifError %d: %s"

    invoke-static {p1, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method
