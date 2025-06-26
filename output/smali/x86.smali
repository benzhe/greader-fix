.class public final synthetic Lx86;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr56$a;


# instance fields
.field public final a:Lyq;


# direct methods
.method public constructor <init>(Lyq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx86;->a:Lyq;

    return-void
.end method


# virtual methods
.method public a([B)V
    .locals 4

    iget-object v0, p0, Lx86;->a:Lyq;

    .line 1
    new-instance v1, Ltq;

    sget-object v2, Lwq;->e:Lwq;

    const/4 v3, 0x0

    invoke-direct {v1, v3, p1, v2}, Ltq;-><init>(Ljava/lang/Integer;Ljava/lang/Object;Lwq;)V

    .line 2
    check-cast v0, Lgs;

    .line 3
    sget-object p1, Lfs;->a:Lfs;

    invoke-virtual {v0, v1, p1}, Lgs;->a(Lvq;Lar;)V

    return-void
.end method
