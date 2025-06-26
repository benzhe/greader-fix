.class public Lap6$a;
.super Landroid/database/CursorWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lap6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final e:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    const-string p1, "_id"

    .line 2
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lap6$a;->e:I

    const-string p1, "sub_id"

    .line 3
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    const-string p1, "uid"

    .line 4
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    const-string p1, "title"

    .line 5
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    const-string p1, "content"

    .line 6
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    const-string p1, "author"

    .line 7
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    const-string p1, "link"

    .line 8
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    const-string p1, "image"

    .line 9
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    const-string p1, "video"

    .line 10
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    const-string p1, "audio"

    .line 11
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    const-string p1, "sharer"

    .line 12
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    const-string p1, "published_time"

    .line 13
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    const-string p1, "updated_time"

    .line 14
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    const-string p1, "starred"

    .line 15
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    const-string p1, "cached"

    .line 16
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    const-string p1, "keep_unread"

    .line 17
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    const-string p1, "read"

    .line 18
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    const-string p1, "read_time"

    .line 19
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    const-string p1, "sync_time"

    .line 20
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    const-string p1, "sub_title"

    .line 21
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    return-void
.end method
