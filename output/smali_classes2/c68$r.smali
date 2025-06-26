.class public final Lc68$r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc68$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc68;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "r"
.end annotation


# instance fields
.field public final e:La78;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La78<",
            "Lz48;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(La78;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La78<",
            "Lz48;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc68$r;->e:La78;

    .line 3
    iput-object p2, p0, Lc68$r;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public i(Le68;Ljava/lang/StringBuilder;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc68$r;->e:La78;

    invoke-virtual {p1, v0}, Le68;->c(La78;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz48;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lz48;->K()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc68$r;->f:Ljava/lang/String;

    return-object v0
.end method
