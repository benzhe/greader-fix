.class public Lyf6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee6;


# instance fields
.field public final synthetic e:Ljava/lang/Class;

.field public final synthetic f:Lde6;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lde6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lyf6;->e:Ljava/lang/Class;

    iput-object p2, p0, Lyf6;->f:Lde6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lod6;Ldg6;)Lde6;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            ">(",
            "Lod6;",
            "Ldg6<",
            "TT2;>;)",
            "Lde6<",
            "TT2;>;"
        }
    .end annotation

    .line 1
    iget-object p1, p2, Ldg6;->a:Ljava/lang/Class;

    .line 2
    iget-object p2, p0, Lyf6;->e:Ljava/lang/Class;

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    new-instance p2, Lyf6$a;

    invoke-direct {p2, p0, p1}, Lyf6$a;-><init>(Lyf6;Ljava/lang/Class;)V

    return-object p2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Factory[typeHierarchy="

    .line 1
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lyf6;->e:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",adapter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lyf6;->f:Lde6;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
