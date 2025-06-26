.class public final synthetic Lou;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltu$d;


# instance fields
.field public final a:Lzu;


# direct methods
.method public constructor <init>(Lzu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lou;->a:Lzu;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lou;->a:Lzu;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method
