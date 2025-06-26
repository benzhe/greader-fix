.class public Lbp6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final e:[Ljava/lang/String;

.field public static final f:[Ljava/lang/String;

.field public static final g:[[Ljava/lang/String;

.field public static final h:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "content://com.noinnion.android.greader.reader.provider/item_sync"

    .line 1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    const-string v0, "_id"

    const-string v1, "uid"

    .line 2
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbp6;->e:[Ljava/lang/String;

    .line 3
    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lbp6;->f:[Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [[Ljava/lang/String;

    .line 4
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lbp6;->g:[[Ljava/lang/String;

    .line 5
    :goto_0
    sget-object v0, Lbp6;->f:[Ljava/lang/String;

    array-length v1, v0

    if-ge v2, v1, :cond_0

    .line 6
    sget-object v1, Lbp6;->e:[Ljava/lang/String;

    aget-object v1, v1, v2

    const-string v3, "item_sync."

    .line 7
    invoke-static {v3, v1}, Ljo;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "DROP TABLE IF EXISTS item_sync"

    const-string v1, "CREATE TABLE IF NOT EXISTS item_sync (_id INTEGER PRIMARY KEY, uid TEXT NOT NULL)"

    .line 8
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbp6;->h:[Ljava/lang/String;

    return-void
.end method
