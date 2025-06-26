.class public final Li08;
.super Ljm7;
.source "SourceFile"

# interfaces
.implements Ltl7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljm7;",
        "Ltl7<",
        "Lo18;",
        "Lj18;",
        "Landroid/content/Context;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lj08;


# direct methods
.method public constructor <init>(Lj08;)V
    .locals 0

    iput-object p1, p0, Li08;->e:Lj08;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ljm7;-><init>(I)V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lo18;

    check-cast p2, Lj18;

    const-string v0, "$receiver"

    .line 1
    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "it"

    invoke-static {p2, p1}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Li08;->e:Lj08;

    iget-object p1, p1, Lj08;->e:Landroid/content/Context;

    return-object p1
.end method
