.class public final synthetic Lc66;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luc7;


# instance fields
.field public final e:Lk66;

.field public final f:Lo96;


# direct methods
.method public constructor <init>(Lk66;Lo96;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc66;->e:Lk66;

    iput-object p2, p0, Lc66;->f:Lo96;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lc66;->e:Lk66;

    iget-object v1, p0, Lc66;->f:Lo96;

    check-cast p1, La66;

    .line 1
    sget-object v2, Lk66;->d:La66;

    .line 2
    invoke-virtual {v1}, Lo96;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lk66;->c()Lz56;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, La66;->E(Ljava/lang/String;Lz56;)Lz56;

    move-result-object p1

    return-object p1
.end method
