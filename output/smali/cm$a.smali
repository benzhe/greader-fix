.class public Lcm$a;
.super Lhg;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcm;-><init>(Llg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhg<",
        "Lam;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcm;Llg;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lhg;-><init>(Llg;)V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR IGNORE INTO `WorkName`(`name`,`work_spec_id`) VALUES (?,?)"

    return-object v0
.end method

.method public d(Leh;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p2, Lam;

    .line 2
    iget-object v0, p2, Lam;->a:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p1, Ldh;->e:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v2, p1, Ldh;->e:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v2, v1, v0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 5
    :goto_0
    iget-object p2, p2, Lam;->b:Ljava/lang/String;

    const/4 v0, 0x2

    if-nez p2, :cond_1

    .line 6
    iget-object p1, p1, Ldh;->e:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    goto :goto_1

    .line 7
    :cond_1
    iget-object p1, p1, Ldh;->e:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {p1, v0, p2}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_1
    return-void
.end method
