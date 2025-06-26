.class public final synthetic Lty1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Landroid/database/sqlite/SQLiteDatabase;

.field public final f:Ljava/lang/String;

.field public final g:Lls0;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lls0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lty1;->e:Landroid/database/sqlite/SQLiteDatabase;

    iput-object p2, p0, Lty1;->f:Ljava/lang/String;

    iput-object p3, p0, Lty1;->g:Lls0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lty1;->e:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lty1;->f:Ljava/lang/String;

    iget-object v2, p0, Lty1;->g:Lls0;

    .line 1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const/4 v4, 0x1

    .line 2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "event_state"

    invoke-virtual {v3, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const-string v1, "offline_buffered_pings"

    const-string v5, "gws_query_id = ?"

    .line 3
    invoke-virtual {v0, v1, v3, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4
    invoke-static {v0, v2}, Lsy1;->a(Landroid/database/sqlite/SQLiteDatabase;Lls0;)V

    return-void
.end method
