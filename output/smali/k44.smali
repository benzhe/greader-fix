.class public final Lk44;
.super Lz84;
.source "SourceFile"

# interfaces
.implements Lea4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lz84<",
        "Ll44;",
        "Lk44;",
        ">;",
        "Lea4;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Ll44;->x()Ll44;

    move-result-object v0

    invoke-direct {p0, v0}, Lz84;-><init>(Lc94;)V

    return-void
.end method

.method public synthetic constructor <init>(Lj44;)V
    .locals 0

    invoke-static {}, Ll44;->x()Ll44;

    move-result-object p1

    invoke-direct {p0, p1}, Lz84;-><init>(Lc94;)V

    return-void
.end method


# virtual methods
.method public final m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz84;->f:Lc94;

    .line 1
    check-cast v0, Ll44;

    invoke-virtual {v0}, Ll44;->s()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final o()I
    .locals 1

    iget-object v0, p0, Lz84;->f:Lc94;

    .line 1
    check-cast v0, Ll44;

    invoke-virtual {v0}, Ll44;->w()I

    move-result v0

    return v0
.end method
