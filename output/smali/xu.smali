.class public final synthetic Lxu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzu$a;


# static fields
.field public static final a:Lxu;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lxu;

    invoke-direct {v0}, Lxu;-><init>()V

    sput-object v0, Lxu;->a:Lxu;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1
    sget-object v0, Lzu;->g:Ljava/util/List;

    const-string v0, "ALTER TABLE events ADD COLUMN payload_encoding TEXT"

    .line 2
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
