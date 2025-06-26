.class public final synthetic Lpu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltu$b;


# static fields
.field public static final a:Lpu;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lpu;

    invoke-direct {v0}, Lpu;-><init>()V

    sput-object v0, Lpu;->a:Lpu;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Landroid/database/Cursor;

    .line 1
    sget-object v0, Ltu;->i:Luq;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-static {}, Lds;->a()Lds$a;

    move-result-object v1

    const/4 v2, 0x1

    .line 5
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lds$a;->b(Ljava/lang/String;)Lds$a;

    const/4 v2, 0x2

    .line 6
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Liv;->b(I)Lwq;

    move-result-object v2

    invoke-virtual {v1, v2}, Lds$a;->c(Lwq;)Lds$a;

    const/4 v2, 0x3

    .line 7
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 8
    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 9
    :goto_1
    check-cast v1, Lwr$b;

    .line 10
    iput-object v2, v1, Lwr$b;->b:[B

    .line 11
    invoke-virtual {v1}, Lwr$b;->a()Lds;

    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method
