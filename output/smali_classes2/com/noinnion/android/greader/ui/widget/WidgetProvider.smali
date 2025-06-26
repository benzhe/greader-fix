.class public Lcom/noinnion/android/greader/ui/widget/WidgetProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/noinnion/android/greader/ui/widget/WidgetProvider$a;,
        Lcom/noinnion/android/greader/ui/widget/WidgetProvider$b;
    }
.end annotation


# static fields
.field public static final e:Landroid/net/Uri;

.field public static final f:Landroid/net/Uri;

.field public static final g:Landroid/content/UriMatcher;

.field public static final h:[Ljava/lang/String;

.field public static i:Landroid/content/Context;

.field public static j:Luv6;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const-string v0, "content://com.noinnion.android.greader.reader.widget.provider"

    .line 1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/noinnion/android/greader/ui/widget/WidgetProvider;->e:Landroid/net/Uri;

    .line 2
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/noinnion/android/greader/ui/widget/WidgetProvider;->f:Landroid/net/Uri;

    .line 3
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/noinnion/android/greader/ui/widget/WidgetProvider;->g:Landroid/content/UriMatcher;

    const-string v1, "item._id"

    const-string v2, "item.title"

    const-string v3, "subscription.title AS sub_title"

    const-string v4, "item.image"

    .line 4
    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/noinnion/android/greader/ui/widget/WidgetProvider;->h:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 5
    sput-object v1, Lcom/noinnion/android/greader/ui/widget/WidgetProvider;->i:Landroid/content/Context;

    const-string v2, "com.noinnion.android.greader.reader.widget.provider"

    const-string v3, "data/*"

    const/4 v4, 0x0

    .line 6
    invoke-virtual {v0, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7
    sput-object v1, Lcom/noinnion/android/greader/ui/widget/WidgetProvider;->j:Luv6;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Luv6;
    .locals 1

    .line 1
    sget-object v0, Lcom/noinnion/android/greader/ui/widget/WidgetProvider;->j:Luv6;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Luv6;

    invoke-direct {v0, p0}, Luv6;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/noinnion/android/greader/ui/widget/WidgetProvider;->j:Luv6;

    .line 3
    :cond_0
    sget-object p0, Lcom/noinnion/android/greader/ui/widget/WidgetProvider;->j:Luv6;

    return-object p0
.end method

.method public static b(Landroid/content/Context;I)V
    .locals 1

    .line 1
    sget-object v0, Lcom/noinnion/android/greader/ui/widget/WidgetProvider;->f:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()Z
    .locals 4

    .line 1
    sget-object v0, Lcom/noinnion/android/greader/ui/widget/WidgetProvider;->i:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/noinnion/android/greader/ui/widget/WidgetProvider;->i:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/noinnion/android/greader/ui/widget/WidgetProvider;->e:Landroid/net/Uri;

    const/4 v2, 0x1

    new-instance v3, Lcom/noinnion/android/greader/ui/widget/WidgetProvider$a;

    invoke-direct {v3, p0}, Lcom/noinnion/android/greader/ui/widget/WidgetProvider$a;-><init>(Lcom/noinnion/android/greader/ui/widget/WidgetProvider;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    .line 1
    sget-object p3, Lcom/noinnion/android/greader/ui/widget/WidgetProvider;->g:Landroid/content/UriMatcher;

    invoke-virtual {p3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p3

    if-nez p3, :cond_7

    .line 2
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    const/4 p4, 0x1

    sub-int/2addr p3, p4

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 4
    new-instance p3, Ldy6;

    invoke-direct {p3, p2}, Ldy6;-><init>([Ljava/lang/String;)V

    .line 5
    sget-object p5, Lcom/noinnion/android/greader/ui/widget/WidgetProvider;->i:Landroid/content/Context;

    invoke-static {p5}, Lcom/noinnion/android/greader/ui/widget/WidgetProvider;->a(Landroid/content/Context;)Luv6;

    move-result-object p5

    invoke-virtual {p5, p1}, Luv6;->f(I)I

    move-result p5

    if-nez p5, :cond_0

    const/16 p5, 0x64

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/noinnion/android/greader/ui/widget/WidgetProvider;->i:Landroid/content/Context;

    invoke-static {v1}, Lon6;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " limit "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 7
    sget-object v0, Lcom/noinnion/android/greader/ui/widget/WidgetProvider;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/noinnion/android/greader/ui/widget/WidgetProvider;->a(Landroid/content/Context;)Luv6;

    move-result-object v0

    invoke-virtual {v0, p1}, Luv6;->j(I)Ljava/lang/String;

    move-result-object v0

    .line 8
    sget-object v1, Lcom/noinnion/android/greader/ui/widget/WidgetProvider;->i:Landroid/content/Context;

    invoke-static {v1}, Lcom/noinnion/android/greader/ui/widget/WidgetProvider;->a(Landroid/content/Context;)Luv6;

    move-result-object v1

    invoke-virtual {v1, p1}, Luv6;->m(I)Z

    move-result p1

    .line 9
    sget-object v1, Lcom/noinnion/android/greader/ui/widget/WidgetProvider;->i:Landroid/content/Context;

    invoke-static {v1, v0, p1, p5}, Lep6;->s(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_3

    .line 10
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 11
    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result p5

    if-nez p5, :cond_6

    .line 12
    array-length p5, p2

    new-array p5, p5, [Ljava/lang/Object;

    const-string v0, "_id"

    .line 13
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 14
    array-length v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_5

    .line 15
    aget-object v5, p2, v4

    .line 16
    aget-object v6, p2, v3

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 17
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, p5, v4

    goto :goto_2

    .line 18
    :cond_2
    aget-object v6, p2, p4

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v5, "title"

    .line 19
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, p5, v4

    goto :goto_2

    :cond_3
    const/4 v6, 0x2

    .line 20
    aget-object v6, p2, v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 21
    sget-object v5, Lcom/noinnion/android/greader/ui/widget/WidgetProvider$b;->g:Lcom/noinnion/android/greader/ui/widget/WidgetProvider$b;

    invoke-virtual {v5}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, p5, v4

    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 22
    :cond_5
    invoke-virtual {p3, p5}, Ldy6;->a([Ljava/lang/Object;)V

    .line 23
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 24
    :cond_6
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :goto_3
    return-object p3

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 25
    throw p2

    .line 26
    :cond_7
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unrecognized URI:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
