.class public final Landroidx/media/AudioAttributesImplApi21Parcelizer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Lui;)Lae;
    .locals 3

    .line 1
    new-instance v0, Lae;

    invoke-direct {v0}, Lae;-><init>()V

    .line 2
    iget-object v1, v0, Lae;->a:Landroid/media/AudioAttributes;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lui;->m(Landroid/os/Parcelable;I)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/media/AudioAttributes;

    iput-object v1, v0, Lae;->a:Landroid/media/AudioAttributes;

    .line 3
    iget v1, v0, Lae;->b:I

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lui;->k(II)I

    move-result p0

    iput p0, v0, Lae;->b:I

    return-object v0
.end method

.method public static write(Lae;Lui;)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lae;->a:Landroid/media/AudioAttributes;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p1, v1}, Lui;->p(I)V

    .line 4
    invoke-virtual {p1, v0}, Lui;->u(Landroid/os/Parcelable;)V

    .line 5
    iget p0, p0, Lae;->b:I

    const/4 v0, 0x2

    .line 6
    invoke-virtual {p1, v0}, Lui;->p(I)V

    .line 7
    invoke-virtual {p1, p0}, Lui;->t(I)V

    return-void
.end method
