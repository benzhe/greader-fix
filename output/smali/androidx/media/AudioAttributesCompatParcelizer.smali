.class public final Landroidx/media/AudioAttributesCompatParcelizer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Lui;)Landroidx/media/AudioAttributesCompat;
    .locals 3

    .line 1
    new-instance v0, Landroidx/media/AudioAttributesCompat;

    invoke-direct {v0}, Landroidx/media/AudioAttributesCompat;-><init>()V

    .line 2
    iget-object v1, v0, Landroidx/media/AudioAttributesCompat;->a:Lzd;

    const/4 v2, 0x1

    .line 3
    invoke-virtual {p0, v2}, Lui;->i(I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lui;->o()Lwi;

    move-result-object v1

    .line 5
    :goto_0
    check-cast v1, Lzd;

    iput-object v1, v0, Landroidx/media/AudioAttributesCompat;->a:Lzd;

    return-object v0
.end method

.method public static write(Landroidx/media/AudioAttributesCompat;Lui;)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p0, p0, Landroidx/media/AudioAttributesCompat;->a:Lzd;

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, v0}, Lui;->p(I)V

    .line 4
    invoke-virtual {p1, p0}, Lui;->w(Lwi;)V

    return-void
.end method
