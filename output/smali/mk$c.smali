.class public final Lmk$c;
.super Lpg;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lpg;-><init>(II)V

    return-void
.end method


# virtual methods
.method public a(Lwg;)V
    .locals 2

    .line 1
    move-object v0, p1

    check-cast v0, Lah;

    .line 2
    iget-object v0, v0, Lah;->e:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE workspec ADD COLUMN `trigger_content_update_delay` INTEGER NOT NULL DEFAULT -1"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3
    check-cast p1, Lah;

    .line 4
    iget-object p1, p1, Lah;->e:Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "ALTER TABLE workspec ADD COLUMN `trigger_max_content_delay` INTEGER NOT NULL DEFAULT -1"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
