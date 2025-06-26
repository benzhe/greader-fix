.class public final synthetic Li66;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luc7;


# instance fields
.field public final e:Lk66;


# direct methods
.method public constructor <init>(Lk66;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li66;->e:Lk66;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Li66;->e:Lk66;

    check-cast p1, La66;

    .line 1
    iget-object v1, v0, Lk66;->a:Lv56;

    invoke-virtual {v1, p1}, Lv56;->b(Lii6;)Lhb7;

    move-result-object v1

    .line 2
    new-instance v2, Lj66;

    invoke-direct {v2, v0, p1}, Lj66;-><init>(Lk66;La66;)V

    .line 3
    invoke-virtual {v1, v2}, Lhb7;->d(Lqc7;)Lhb7;

    move-result-object p1

    return-object p1
.end method
