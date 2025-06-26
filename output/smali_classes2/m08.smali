.class public final Lm08;
.super Ljm7;
.source "SourceFile"

# interfaces
.implements Lel7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljm7;",
        "Lel7<",
        "Lyj7;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Ll08;

.field public final synthetic f:Ljava/util/List;


# direct methods
.method public constructor <init>(Ll08;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lm08;->e:Ll08;

    iput-object p2, p0, Lm08;->f:Ljava/util/List;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ljm7;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lm08;->e:Ll08;

    iget-object v1, p0, Lm08;->f:Ljava/util/List;

    .line 2
    iget-object v0, v0, Ll08;->a:Lk08;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lk08;->b(Lk08;Ljava/util/List;ZI)V

    .line 3
    sget-object v0, Lyj7;->a:Lyj7;

    return-object v0
.end method
